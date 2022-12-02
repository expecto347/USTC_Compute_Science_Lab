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
CMAKE_COMMAND = /usr/local/lib/python3.8/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.8/dist-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build

# Include any dependencies generated for this target.
include bin/bin/CMakeFiles/lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include bin/bin/CMakeFiles/lib.dir/compiler_depend.make

# Include the progress variables for this target.
include bin/bin/CMakeFiles/lib.dir/progress.make

# Include the compile flags for this target's objects.
include bin/bin/CMakeFiles/lib.dir/flags.make

bin/bin/CMakeFiles/lib.dir/Fibheap.c.o: bin/bin/CMakeFiles/lib.dir/flags.make
bin/bin/CMakeFiles/lib.dir/Fibheap.c.o: /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/src/lib/Fibheap.c
bin/bin/CMakeFiles/lib.dir/Fibheap.c.o: bin/bin/CMakeFiles/lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object bin/bin/CMakeFiles/lib.dir/Fibheap.c.o"
	cd /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build/bin/bin && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT bin/bin/CMakeFiles/lib.dir/Fibheap.c.o -MF CMakeFiles/lib.dir/Fibheap.c.o.d -o CMakeFiles/lib.dir/Fibheap.c.o -c /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/src/lib/Fibheap.c

bin/bin/CMakeFiles/lib.dir/Fibheap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib.dir/Fibheap.c.i"
	cd /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build/bin/bin && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/src/lib/Fibheap.c > CMakeFiles/lib.dir/Fibheap.c.i

bin/bin/CMakeFiles/lib.dir/Fibheap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib.dir/Fibheap.c.s"
	cd /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build/bin/bin && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/src/lib/Fibheap.c -o CMakeFiles/lib.dir/Fibheap.c.s

# Object files for target lib
lib_OBJECTS = \
"CMakeFiles/lib.dir/Fibheap.c.o"

# External object files for target lib
lib_EXTERNAL_OBJECTS =

bin/bin/liblib.a: bin/bin/CMakeFiles/lib.dir/Fibheap.c.o
bin/bin/liblib.a: bin/bin/CMakeFiles/lib.dir/build.make
bin/bin/liblib.a: bin/bin/CMakeFiles/lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library liblib.a"
	cd /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build/bin/bin && $(CMAKE_COMMAND) -P CMakeFiles/lib.dir/cmake_clean_target.cmake
	cd /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build/bin/bin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bin/bin/CMakeFiles/lib.dir/build: bin/bin/liblib.a
.PHONY : bin/bin/CMakeFiles/lib.dir/build

bin/bin/CMakeFiles/lib.dir/clean:
	cd /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build/bin/bin && $(CMAKE_COMMAND) -P CMakeFiles/lib.dir/cmake_clean.cmake
.PHONY : bin/bin/CMakeFiles/lib.dir/clean

bin/bin/CMakeFiles/lib.dir/depend:
	cd /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/src/lib /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build/bin/bin /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Dijkstra/build/bin/bin/CMakeFiles/lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bin/bin/CMakeFiles/lib.dir/depend
