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
include CMakeFiles/serialTestRead.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/serialTestRead.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/serialTestRead.dir/flags.make

CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o: CMakeFiles/serialTestRead.dir/flags.make
CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o: src/serialTestRead.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/workspace/serialTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o -c /home/ben/workspace/serialTest/src/serialTestRead.cpp

CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/workspace/serialTest/src/serialTestRead.cpp > CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.i

CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/workspace/serialTest/src/serialTestRead.cpp -o CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.s

CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o.requires:

.PHONY : CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o.requires

CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o.provides: CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o.requires
	$(MAKE) -f CMakeFiles/serialTestRead.dir/build.make CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o.provides.build
.PHONY : CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o.provides

CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o.provides.build: CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o


# Object files for target serialTestRead
serialTestRead_OBJECTS = \
"CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o"

# External object files for target serialTestRead
serialTestRead_EXTERNAL_OBJECTS =

serialTestRead: CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o
serialTestRead: CMakeFiles/serialTestRead.dir/build.make
serialTestRead: CMakeFiles/serialTestRead.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ben/workspace/serialTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable serialTestRead"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serialTestRead.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/serialTestRead.dir/build: serialTestRead

.PHONY : CMakeFiles/serialTestRead.dir/build

CMakeFiles/serialTestRead.dir/requires: CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o.requires

.PHONY : CMakeFiles/serialTestRead.dir/requires

CMakeFiles/serialTestRead.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/serialTestRead.dir/cmake_clean.cmake
.PHONY : CMakeFiles/serialTestRead.dir/clean

CMakeFiles/serialTestRead.dir/depend:
	cd /home/ben/workspace/serialTest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/workspace/serialTest /home/ben/workspace/serialTest /home/ben/workspace/serialTest /home/ben/workspace/serialTest /home/ben/workspace/serialTest/CMakeFiles/serialTestRead.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/serialTestRead.dir/depend

