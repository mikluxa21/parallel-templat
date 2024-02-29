# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/user/Pcpp/106/parall

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Pcpp/106/parall/build

# Include any dependencies generated for this target.
include src/parallel_executor/CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/parallel_executor/CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include src/parallel_executor/CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include src/parallel_executor/CMakeFiles/main.dir/flags.make

src/parallel_executor/CMakeFiles/main.dir/src/main.cpp.o: src/parallel_executor/CMakeFiles/main.dir/flags.make
src/parallel_executor/CMakeFiles/main.dir/src/main.cpp.o: ../src/parallel_executor/src/main.cpp
src/parallel_executor/CMakeFiles/main.dir/src/main.cpp.o: src/parallel_executor/CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/Pcpp/106/parall/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/parallel_executor/CMakeFiles/main.dir/src/main.cpp.o"
	cd /home/user/Pcpp/106/parall/build/src/parallel_executor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/parallel_executor/CMakeFiles/main.dir/src/main.cpp.o -MF CMakeFiles/main.dir/src/main.cpp.o.d -o CMakeFiles/main.dir/src/main.cpp.o -c /home/user/Pcpp/106/parall/src/parallel_executor/src/main.cpp

src/parallel_executor/CMakeFiles/main.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/main.cpp.i"
	cd /home/user/Pcpp/106/parall/build/src/parallel_executor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/Pcpp/106/parall/src/parallel_executor/src/main.cpp > CMakeFiles/main.dir/src/main.cpp.i

src/parallel_executor/CMakeFiles/main.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/main.cpp.s"
	cd /home/user/Pcpp/106/parall/build/src/parallel_executor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/Pcpp/106/parall/src/parallel_executor/src/main.cpp -o CMakeFiles/main.dir/src/main.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/src/main.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS = \
"/home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/parall_lib.dir/src/Device.cpp.o" \
"/home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/parall_lib.dir/src/DeviceA.cpp.o" \
"/home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/parall_lib.dir/src/DeviceB.cpp.o" \
"/home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/parall_lib.dir/src/DeviceEvent.cpp.o" \
"/home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/parall_lib.dir/src/Parser.cpp.o" \
"/home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/parall_lib.dir/src/StartedEvent.cpp.o" \
"/home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/parall_lib.dir/src/WorkDoneEvent.cpp.o" \
"/home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/parall_lib.dir/src/DataEvent.cpp.o" \
"/home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/parall_lib.dir/src/Event.cpp.o" \
"/home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/parall_lib.dir/src/EventQueue.cpp.o"

src/parallel_executor/main: src/parallel_executor/CMakeFiles/main.dir/src/main.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/parall_lib.dir/src/Device.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/parall_lib.dir/src/DeviceA.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/parall_lib.dir/src/DeviceB.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/parall_lib.dir/src/DeviceEvent.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/parall_lib.dir/src/Parser.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/parall_lib.dir/src/StartedEvent.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/parall_lib.dir/src/WorkDoneEvent.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/parall_lib.dir/src/DataEvent.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/parall_lib.dir/src/Event.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/parall_lib.dir/src/EventQueue.cpp.o
src/parallel_executor/main: src/parallel_executor/CMakeFiles/main.dir/build.make
src/parallel_executor/main: src/parallel_executor/CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/Pcpp/106/parall/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main"
	cd /home/user/Pcpp/106/parall/build/src/parallel_executor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/parallel_executor/CMakeFiles/main.dir/build: src/parallel_executor/main
.PHONY : src/parallel_executor/CMakeFiles/main.dir/build

src/parallel_executor/CMakeFiles/main.dir/clean:
	cd /home/user/Pcpp/106/parall/build/src/parallel_executor && $(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : src/parallel_executor/CMakeFiles/main.dir/clean

src/parallel_executor/CMakeFiles/main.dir/depend:
	cd /home/user/Pcpp/106/parall/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Pcpp/106/parall /home/user/Pcpp/106/parall/src/parallel_executor /home/user/Pcpp/106/parall/build /home/user/Pcpp/106/parall/build/src/parallel_executor /home/user/Pcpp/106/parall/build/src/parallel_executor/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/parallel_executor/CMakeFiles/main.dir/depend
