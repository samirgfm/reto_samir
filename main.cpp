#include <iostream>
#include <fstream>
#include <string>
#include "json/json.hpp"


using namespace std;
using json::JSON;

// Creo mi estructura modelo
struct tiempo {
    string ciudad;
    string fecha;
    double maxC;
    double minC;
    double precipitacion;
    int nubosidad;
};

// Declaración de funciones que voy a utilizar
bool esFecha(string line, string fecha);

bool esCiudad(string line, string ciudadSolicitada, string fecha);

tiempo resultado(string ciudadSolicitada, string fecha);

//Funciones

tiempo resultado(string ciudadSolicitada, string fecha) {
    //declaración de variables necesarias
    string tempMin;
    string tempMax;
    string precip;
    string nubosidad;
    //leemos el archivo con librería fstream
    ifstream archivo;
    archivo.open("files/MeteologicaVacanteDatos.csv");
    if (archivo.fail()) {
        std::cout << "hay un problema";
    };
    while (archivo.good()) {
        string line;
        // utilizo la función getline para separar la "base de datos" en strings
        getline(archivo, line);
        // verifico que es la fecha solicitada
        if (!esFecha(line, fecha)) {
            continue;
        };
        //verifico que sea la ciudad solcitada
        if (!esCiudad(line, ciudadSolicitada, fecha)) {
            continue;
        };

        //Si he llegado a este punto significa que he encontrado la información solicitada y obtengo el resto de info.
        // lo hago con el string line y con funciones de la librería string
        tempMax = line.substr(ciudadSolicitada.length() + fecha.length() + 2,
                              line.find(';', ciudadSolicitada.length() + fecha.length() + 2) -
                              (ciudadSolicitada.length() + fecha.length() + 2));
        tempMin = line.substr(ciudadSolicitada.length() + fecha.length() + tempMax.length() + 3,
                              line.find(';', ciudadSolicitada.length() + fecha.length() + tempMax.length() + 3) -
                              (ciudadSolicitada.length() + fecha.length() + tempMax.length() + 3));

        precip = line.substr(ciudadSolicitada.length() + fecha.length() + tempMax.length() + tempMin.length() + 4,
                             line.find(';', ciudadSolicitada.length() + fecha.length() + tempMax.length() +
                                            tempMin.length() + 4) -
                             (ciudadSolicitada.length() + fecha.length() + tempMax.length() + tempMin.length() + 4));

        nubosidad = line.substr(line.rfind(';') + 1);
        //creo un objeto con la información solicitada
        tiempo tiempo1 = {
                ciudadSolicitada, fecha, stod(tempMax), stod(tempMin), stod(precip), stoi(nubosidad)

        };
        //cierro el archivo
        archivo.close();
        //devuelvo la estructura
        return tiempo1;

    };
    //cierro el archivo
    archivo.close();
    //devuelvo la estructura
    return tiempo{};


};

//función para verificar la fecha
bool esFecha(string line, string fecha) {
    bool esFecha = true;
    for (int i = 0; i < fecha.length(); i++) {
        if (line[i] != fecha[i]) {
            esFecha = false;
            break;
        };
    };
    return esFecha;
};

//función para verificar la ciudad.
bool esCiudad(string line, string ciudadSolicitada, string fecha) {
    bool esCiudad = true;
    for (int j = 0; j < ciudadSolicitada.length(); j++) {
        if (ciudadSolicitada[j] != line[fecha.length() + 1 + j]) {
            esCiudad = false;
            break;
        };
    };
    return esCiudad;
};


int main() {

    //declaración de variables necesarias
    string ciudadSolicitada;
    string añoSolicitado;
    string mesSolicitado;
    string diaSolicitado;
    string ctf;
    string fecha;

    bool cTfa = false;

    // solicitando la información
    std::cout << "Por favor, introducir año solicitado" << endl;
    std::cin >> añoSolicitado;
    std::cout << "Por favor, introducir mes solicitado ej:1,2,3" << endl;
    std::cin >> mesSolicitado;
    std::cout << "Por favor, introducir día solicitado" << endl;
    std::cin >> diaSolicitado;
    std::cout << "Por favor, introducir ciudad" << endl;
    std::cin >> ciudadSolicitada;
    std::cout << "¿Desea el resultado en grados fahrenheit? predeterminado celsius" << endl;
    std::cin >> ctf;


    // adapto la información convenientemente
    if (stoi(diaSolicitado) < 10) {
        diaSolicitado = "0" + diaSolicitado;
    };
    if (stoi(mesSolicitado) < 10) {
        mesSolicitado = "0" + mesSolicitado;
    };
    fecha = añoSolicitado + '/' + mesSolicitado + '/' + diaSolicitado;
    ciudadSolicitada[0] = putchar(toupper(ciudadSolicitada[0]));
    if (ctf == "si" || ctf == "Si" || ctf == "Sí" || ctf == "sí") {
        cTfa = true;
    };
    // llamo a la funcion resultado cuando ya he solicitado la información
    tiempo miEstructura = resultado(ciudadSolicitada, fecha);
    //transformo los grados a F si es necesario
    if (cTfa) {
        miEstructura.maxC = miEstructura.maxC * 9 / 5 + 32;
        miEstructura.minC = miEstructura.minC * 9 / 5 + 32;

    };
    // Creo objeto en formato JSON
    JSON obj = {
            "Ciudad", miEstructura.ciudad,
            "Fecha", miEstructura.fecha,
            "Temperatura máxima", miEstructura.maxC,
            "Temperatura mínima", miEstructura.minC,
            "Precipitación", miEstructura.precipitacion,
            "Nubosidad", miEstructura.nubosidad
    };

    //imprimo en pantalla el resultado
    std::cout << obj << endl;
    return 0;

}
