# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/projects/personal/cjadv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/projects/personal/cjadv/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/parse_array.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/parse_array.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/parse_array.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/parse_array.dir/flags.make

tests/CMakeFiles/parse_array.dir/parse_array.c.o: tests/CMakeFiles/parse_array.dir/flags.make
tests/CMakeFiles/parse_array.dir/parse_array.c.o: /media/projects/personal/cjadv/tests/parse_array.c
tests/CMakeFiles/parse_array.dir/parse_array.c.o: tests/CMakeFiles/parse_array.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/projects/personal/cjadv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/parse_array.dir/parse_array.c.o"
	cd /media/projects/personal/cjadv/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/parse_array.dir/parse_array.c.o -MF CMakeFiles/parse_array.dir/parse_array.c.o.d -o CMakeFiles/parse_array.dir/parse_array.c.o -c /media/projects/personal/cjadv/tests/parse_array.c

tests/CMakeFiles/parse_array.dir/parse_array.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/parse_array.dir/parse_array.c.i"
	cd /media/projects/personal/cjadv/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/projects/personal/cjadv/tests/parse_array.c > CMakeFiles/parse_array.dir/parse_array.c.i

tests/CMakeFiles/parse_array.dir/parse_array.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/parse_array.dir/parse_array.c.s"
	cd /media/projects/personal/cjadv/build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/projects/personal/cjadv/tests/parse_array.c -o CMakeFiles/parse_array.dir/parse_array.c.s

# Object files for target parse_array
parse_array_OBJECTS = \
"CMakeFiles/parse_array.dir/parse_array.c.o"

# External object files for target parse_array
parse_array_EXTERNAL_OBJECTS =

tests/parse_array: tests/CMakeFiles/parse_array.dir/parse_array.c.o
tests/parse_array: tests/CMakeFiles/parse_array.dir/build.make
tests/parse_array: libcjson.so.1.7.17
tests/parse_array: tests/libunity.a
tests/parse_array: tests/CMakeFiles/parse_array.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/projects/personal/cjadv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable parse_array"
	cd /media/projects/personal/cjadv/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parse_array.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/parse_array.dir/build: tests/parse_array
.PHONY : tests/CMakeFiles/parse_array.dir/build

tests/CMakeFiles/parse_array.dir/clean:
	cd /media/projects/personal/cjadv/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/parse_array.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/parse_array.dir/clean

tests/CMakeFiles/parse_array.dir/depend:
	cd /media/projects/personal/cjadv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/projects/personal/cjadv /media/projects/personal/cjadv/tests /media/projects/personal/cjadv/build /media/projects/personal/cjadv/build/tests /media/projects/personal/cjadv/build/tests/CMakeFiles/parse_array.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/parse_array.dir/depend

