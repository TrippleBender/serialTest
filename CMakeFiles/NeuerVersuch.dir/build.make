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
include CMakeFiles/NeuerVersuch.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NeuerVersuch.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NeuerVersuch.dir/flags.make

CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o: CMakeFiles/NeuerVersuch.dir/flags.make
CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o: src/NeuerVersuch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ben/workspace/serialTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o -c /home/ben/workspace/serialTest/src/NeuerVersuch.cpp

CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ben/workspace/serialTest/src/NeuerVersuch.cpp > CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.i

CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ben/workspace/serialTest/src/NeuerVersuch.cpp -o CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.s

CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o.requires:

.PHONY : CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o.requires

CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o.provides: CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o.requires
	$(MAKE) -f CMakeFiles/NeuerVersuch.dir/build.make CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o.provides.build
.PHONY : CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o.provides

CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o.provides.build: CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o


# Object files for target NeuerVersuch
NeuerVersuch_OBJECTS = \
"CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o"

# External object files for target NeuerVersuch
NeuerVersuch_EXTERNAL_OBJECTS =

NeuerVersuch: CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o
NeuerVersuch: CMakeFiles/NeuerVersuch.dir/build.make
NeuerVersuch: CMakeFiles/NeuerVersuch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ben/workspace/serialTest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable NeuerVersuch"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NeuerVersuch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NeuerVersuch.dir/build: NeuerVersuch

.PHONY : CMakeFiles/NeuerVersuch.dir/build

CMakeFiles/NeuerVersuch.dir/requires: CMakeFiles/NeuerVersuch.dir/src/NeuerVersuch.cpp.o.requires

.PHONY : CMakeFiles/NeuerVersuch.dir/requires

CMakeFiles/NeuerVersuch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NeuerVersuch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NeuerVersuch.dir/clean

CMakeFiles/NeuerVersuch.dir/depend:
	cd /home/ben/workspace/serialTest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ben/workspace/serialTest /home/ben/workspace/serialTest /home/ben/workspace/serialTest /home/ben/workspace/serialTest /home/ben/workspace/serialTest/CMakeFiles/NeuerVersuch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NeuerVersuch.dir/depend

