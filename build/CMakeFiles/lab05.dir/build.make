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
CMAKE_SOURCE_DIR = /media/sf_ProjektyCPP/projekt1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/sf_ProjektyCPP/projekt1/build

# Include any dependencies generated for this target.
include CMakeFiles/lab05.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/lab05.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/lab05.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab05.dir/flags.make

CMakeFiles/lab05.dir/main.cpp.o: CMakeFiles/lab05.dir/flags.make
CMakeFiles/lab05.dir/main.cpp.o: ../main.cpp
CMakeFiles/lab05.dir/main.cpp.o: CMakeFiles/lab05.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/sf_ProjektyCPP/projekt1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab05.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab05.dir/main.cpp.o -MF CMakeFiles/lab05.dir/main.cpp.o.d -o CMakeFiles/lab05.dir/main.cpp.o -c /media/sf_ProjektyCPP/projekt1/main.cpp

CMakeFiles/lab05.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab05.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/sf_ProjektyCPP/projekt1/main.cpp > CMakeFiles/lab05.dir/main.cpp.i

CMakeFiles/lab05.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab05.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/sf_ProjektyCPP/projekt1/main.cpp -o CMakeFiles/lab05.dir/main.cpp.s

CMakeFiles/lab05.dir/src/Directory.cpp.o: CMakeFiles/lab05.dir/flags.make
CMakeFiles/lab05.dir/src/Directory.cpp.o: ../src/Directory.cpp
CMakeFiles/lab05.dir/src/Directory.cpp.o: CMakeFiles/lab05.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/sf_ProjektyCPP/projekt1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lab05.dir/src/Directory.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab05.dir/src/Directory.cpp.o -MF CMakeFiles/lab05.dir/src/Directory.cpp.o.d -o CMakeFiles/lab05.dir/src/Directory.cpp.o -c /media/sf_ProjektyCPP/projekt1/src/Directory.cpp

CMakeFiles/lab05.dir/src/Directory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab05.dir/src/Directory.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/sf_ProjektyCPP/projekt1/src/Directory.cpp > CMakeFiles/lab05.dir/src/Directory.cpp.i

CMakeFiles/lab05.dir/src/Directory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab05.dir/src/Directory.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/sf_ProjektyCPP/projekt1/src/Directory.cpp -o CMakeFiles/lab05.dir/src/Directory.cpp.s

CMakeFiles/lab05.dir/src/File.cpp.o: CMakeFiles/lab05.dir/flags.make
CMakeFiles/lab05.dir/src/File.cpp.o: ../src/File.cpp
CMakeFiles/lab05.dir/src/File.cpp.o: CMakeFiles/lab05.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/sf_ProjektyCPP/projekt1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/lab05.dir/src/File.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/lab05.dir/src/File.cpp.o -MF CMakeFiles/lab05.dir/src/File.cpp.o.d -o CMakeFiles/lab05.dir/src/File.cpp.o -c /media/sf_ProjektyCPP/projekt1/src/File.cpp

CMakeFiles/lab05.dir/src/File.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab05.dir/src/File.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/sf_ProjektyCPP/projekt1/src/File.cpp > CMakeFiles/lab05.dir/src/File.cpp.i

CMakeFiles/lab05.dir/src/File.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab05.dir/src/File.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/sf_ProjektyCPP/projekt1/src/File.cpp -o CMakeFiles/lab05.dir/src/File.cpp.s

# Object files for target lab05
lab05_OBJECTS = \
"CMakeFiles/lab05.dir/main.cpp.o" \
"CMakeFiles/lab05.dir/src/Directory.cpp.o" \
"CMakeFiles/lab05.dir/src/File.cpp.o"

# External object files for target lab05
lab05_EXTERNAL_OBJECTS =

lab05: CMakeFiles/lab05.dir/main.cpp.o
lab05: CMakeFiles/lab05.dir/src/Directory.cpp.o
lab05: CMakeFiles/lab05.dir/src/File.cpp.o
lab05: CMakeFiles/lab05.dir/build.make
lab05: libMap.a
lab05: CMakeFiles/lab05.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/sf_ProjektyCPP/projekt1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable lab05"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab05.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab05.dir/build: lab05
.PHONY : CMakeFiles/lab05.dir/build

CMakeFiles/lab05.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab05.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab05.dir/clean

CMakeFiles/lab05.dir/depend:
	cd /media/sf_ProjektyCPP/projekt1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/sf_ProjektyCPP/projekt1 /media/sf_ProjektyCPP/projekt1 /media/sf_ProjektyCPP/projekt1/build /media/sf_ProjektyCPP/projekt1/build /media/sf_ProjektyCPP/projekt1/build/CMakeFiles/lab05.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab05.dir/depend
