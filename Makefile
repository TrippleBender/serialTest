# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ben/workspace/serialTest/CMakeFiles /home/ben/workspace/serialTest/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ben/workspace/serialTest/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named serialTestRead

# Build rule for target.
serialTestRead: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 serialTestRead
.PHONY : serialTestRead

# fast build rule for target.
serialTestRead/fast:
	$(MAKE) -f CMakeFiles/serialTestRead.dir/build.make CMakeFiles/serialTestRead.dir/build
.PHONY : serialTestRead/fast

#=============================================================================
# Target rules for targets named serialTestWrite

# Build rule for target.
serialTestWrite: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 serialTestWrite
.PHONY : serialTestWrite

# fast build rule for target.
serialTestWrite/fast:
	$(MAKE) -f CMakeFiles/serialTestWrite.dir/build.make CMakeFiles/serialTestWrite.dir/build
.PHONY : serialTestWrite/fast

#=============================================================================
# Target rules for targets named serialWriteRead

# Build rule for target.
serialWriteRead: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 serialWriteRead
.PHONY : serialWriteRead

# fast build rule for target.
serialWriteRead/fast:
	$(MAKE) -f CMakeFiles/serialWriteRead.dir/build.make CMakeFiles/serialWriteRead.dir/build
.PHONY : serialWriteRead/fast

#=============================================================================
# Target rules for targets named serialTiltScanner

# Build rule for target.
serialTiltScanner: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 serialTiltScanner
.PHONY : serialTiltScanner

# fast build rule for target.
serialTiltScanner/fast:
	$(MAKE) -f CMakeFiles/serialTiltScanner.dir/build.make CMakeFiles/serialTiltScanner.dir/build
.PHONY : serialTiltScanner/fast

src/serialTestRead.o: src/serialTestRead.cpp.o

.PHONY : src/serialTestRead.o

# target to build an object file
src/serialTestRead.cpp.o:
	$(MAKE) -f CMakeFiles/serialTestRead.dir/build.make CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.o
.PHONY : src/serialTestRead.cpp.o

src/serialTestRead.i: src/serialTestRead.cpp.i

.PHONY : src/serialTestRead.i

# target to preprocess a source file
src/serialTestRead.cpp.i:
	$(MAKE) -f CMakeFiles/serialTestRead.dir/build.make CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.i
.PHONY : src/serialTestRead.cpp.i

src/serialTestRead.s: src/serialTestRead.cpp.s

.PHONY : src/serialTestRead.s

# target to generate assembly for a file
src/serialTestRead.cpp.s:
	$(MAKE) -f CMakeFiles/serialTestRead.dir/build.make CMakeFiles/serialTestRead.dir/src/serialTestRead.cpp.s
.PHONY : src/serialTestRead.cpp.s

src/serialTestWrite.o: src/serialTestWrite.cpp.o

.PHONY : src/serialTestWrite.o

# target to build an object file
src/serialTestWrite.cpp.o:
	$(MAKE) -f CMakeFiles/serialTestWrite.dir/build.make CMakeFiles/serialTestWrite.dir/src/serialTestWrite.cpp.o
.PHONY : src/serialTestWrite.cpp.o

src/serialTestWrite.i: src/serialTestWrite.cpp.i

.PHONY : src/serialTestWrite.i

# target to preprocess a source file
src/serialTestWrite.cpp.i:
	$(MAKE) -f CMakeFiles/serialTestWrite.dir/build.make CMakeFiles/serialTestWrite.dir/src/serialTestWrite.cpp.i
.PHONY : src/serialTestWrite.cpp.i

src/serialTestWrite.s: src/serialTestWrite.cpp.s

.PHONY : src/serialTestWrite.s

# target to generate assembly for a file
src/serialTestWrite.cpp.s:
	$(MAKE) -f CMakeFiles/serialTestWrite.dir/build.make CMakeFiles/serialTestWrite.dir/src/serialTestWrite.cpp.s
.PHONY : src/serialTestWrite.cpp.s

src/serialTilstScanner.o: src/serialTilstScanner.cpp.o

.PHONY : src/serialTilstScanner.o

# target to build an object file
src/serialTilstScanner.cpp.o:
	$(MAKE) -f CMakeFiles/serialTiltScanner.dir/build.make CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.o
.PHONY : src/serialTilstScanner.cpp.o

src/serialTilstScanner.i: src/serialTilstScanner.cpp.i

.PHONY : src/serialTilstScanner.i

# target to preprocess a source file
src/serialTilstScanner.cpp.i:
	$(MAKE) -f CMakeFiles/serialTiltScanner.dir/build.make CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.i
.PHONY : src/serialTilstScanner.cpp.i

src/serialTilstScanner.s: src/serialTilstScanner.cpp.s

.PHONY : src/serialTilstScanner.s

# target to generate assembly for a file
src/serialTilstScanner.cpp.s:
	$(MAKE) -f CMakeFiles/serialTiltScanner.dir/build.make CMakeFiles/serialTiltScanner.dir/src/serialTilstScanner.cpp.s
.PHONY : src/serialTilstScanner.cpp.s

src/serialWriteRead.o: src/serialWriteRead.cpp.o

.PHONY : src/serialWriteRead.o

# target to build an object file
src/serialWriteRead.cpp.o:
	$(MAKE) -f CMakeFiles/serialWriteRead.dir/build.make CMakeFiles/serialWriteRead.dir/src/serialWriteRead.cpp.o
.PHONY : src/serialWriteRead.cpp.o

src/serialWriteRead.i: src/serialWriteRead.cpp.i

.PHONY : src/serialWriteRead.i

# target to preprocess a source file
src/serialWriteRead.cpp.i:
	$(MAKE) -f CMakeFiles/serialWriteRead.dir/build.make CMakeFiles/serialWriteRead.dir/src/serialWriteRead.cpp.i
.PHONY : src/serialWriteRead.cpp.i

src/serialWriteRead.s: src/serialWriteRead.cpp.s

.PHONY : src/serialWriteRead.s

# target to generate assembly for a file
src/serialWriteRead.cpp.s:
	$(MAKE) -f CMakeFiles/serialWriteRead.dir/build.make CMakeFiles/serialWriteRead.dir/src/serialWriteRead.cpp.s
.PHONY : src/serialWriteRead.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... serialTestRead"
	@echo "... rebuild_cache"
	@echo "... serialTestWrite"
	@echo "... serialWriteRead"
	@echo "... serialTiltScanner"
	@echo "... src/serialTestRead.o"
	@echo "... src/serialTestRead.i"
	@echo "... src/serialTestRead.s"
	@echo "... src/serialTestWrite.o"
	@echo "... src/serialTestWrite.i"
	@echo "... src/serialTestWrite.s"
	@echo "... src/serialTilstScanner.o"
	@echo "... src/serialTilstScanner.i"
	@echo "... src/serialTilstScanner.s"
	@echo "... src/serialWriteRead.o"
	@echo "... src/serialWriteRead.i"
	@echo "... src/serialWriteRead.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

