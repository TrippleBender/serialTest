# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ben/workspace/serialTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ben/workspace/serialTest

# Include any dependencies generated for this target.
include CMakeFiles/serialTiltScanner.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/serialTiltScanner.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/serialTiltScanner.dir/flags.make

CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o: CMakeFiles/serialTiltScanner.dir/flags.make
CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o: src/serialTilstScanner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/workspace/serialTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o -c /home/ben/workspace/serialTest/src/serialTilstScanner.cpp

CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/workspace/serialTest/src/serialTilstScanner.cpp > CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.i

CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/workspace/serialTest/src/serialTilstScanner.cpp -o CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.s

CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o.requires:

.PHONY : CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o.requires

CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o.provides: CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o.requires
	$(MAKE) -f CMakeFiles/serialTiltScanner.dir/build.make CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o.provides.build
.PHONY : CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o.provides

CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o.provides.build: CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o


# Object files for target serialTiltScanner
serialTiltScanner_OBJECTS = \
"CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o"

# External object files for target serialTiltScanner
serialTiltScanner_EXTERNAL_OBJECTS =

serialTiltScanner: CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o
serialTiltScanner: CMakeFiles/serialTiltScanner.dir/build.make
serialTiltScanner: CMakeFiles/serialTiltScanner.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ben/workspace/serialTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable serialTiltScanner"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serialTiltScanner.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/serialTiltScanner.dir/build: serialTiltScanner

.PHONY : CMakeFiles/serialTiltScanner.dir/build

CMakeFiles/serialTiltScanner.dir/requires: CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o.requires

.PHONY : CMakeFiles/serialTiltScanner.dir/requires

CMakeFiles/serialTiltScanner.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/serialTiltScanner.dir/cmake_clean.cmake
.PHONY : CMakeFiles/serialTiltScanner.dir/clean

CMakeFiles/serialTiltScanner.dir/depend:
	cd /home/ben/workspace/serialTest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/workspace/serialTest /home/ben/workspace/serialTest /home/ben/workspace/serialTest /home/ben/workspace/serialTest /home/ben/workspace/serialTest/CMakeFiles/serialTiltScanner.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/serialTiltScanner.dir/depend

