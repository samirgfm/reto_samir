# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/samirgfm/CLionProjects/RetoMeteologica

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/samirgfm/CLionProjects/RetoMeteologica/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/RetoMeteologica.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RetoMeteologica.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RetoMeteologica.dir/flags.make

CMakeFiles/RetoMeteologica.dir/main.cpp.o: CMakeFiles/RetoMeteologica.dir/flags.make
CMakeFiles/RetoMeteologica.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/samirgfm/CLionProjects/RetoMeteologica/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RetoMeteologica.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RetoMeteologica.dir/main.cpp.o -c /Users/samirgfm/CLionProjects/RetoMeteologica/main.cpp

CMakeFiles/RetoMeteologica.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RetoMeteologica.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/samirgfm/CLionProjects/RetoMeteologica/main.cpp > CMakeFiles/RetoMeteologica.dir/main.cpp.i

CMakeFiles/RetoMeteologica.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RetoMeteologica.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/samirgfm/CLionProjects/RetoMeteologica/main.cpp -o CMakeFiles/RetoMeteologica.dir/main.cpp.s

# Object files for target RetoMeteologica
RetoMeteologica_OBJECTS = \
"CMakeFiles/RetoMeteologica.dir/main.cpp.o"

# External object files for target RetoMeteologica
RetoMeteologica_EXTERNAL_OBJECTS =

RetoMeteologica: CMakeFiles/RetoMeteologica.dir/main.cpp.o
RetoMeteologica: CMakeFiles/RetoMeteologica.dir/build.make
RetoMeteologica: CMakeFiles/RetoMeteologica.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/samirgfm/CLionProjects/RetoMeteologica/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RetoMeteologica"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RetoMeteologica.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RetoMeteologica.dir/build: RetoMeteologica

.PHONY : CMakeFiles/RetoMeteologica.dir/build

CMakeFiles/RetoMeteologica.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RetoMeteologica.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RetoMeteologica.dir/clean

CMakeFiles/RetoMeteologica.dir/depend:
	cd /Users/samirgfm/CLionProjects/RetoMeteologica/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/samirgfm/CLionProjects/RetoMeteologica /Users/samirgfm/CLionProjects/RetoMeteologica /Users/samirgfm/CLionProjects/RetoMeteologica/cmake-build-debug /Users/samirgfm/CLionProjects/RetoMeteologica/cmake-build-debug /Users/samirgfm/CLionProjects/RetoMeteologica/cmake-build-debug/CMakeFiles/RetoMeteologica.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RetoMeteologica.dir/depend
