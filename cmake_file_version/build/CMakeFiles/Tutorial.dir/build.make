# CMAKE generated file: DO NOT EDIT!
# Generated by "MSYS Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /C/msys64/mingw64/bin/cmake.exe

# The command to remove a file.
RM = /C/msys64/mingw64/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /D/ff/codespace/codespace/cpp/cmake_file_version

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /D/ff/codespace/codespace/cpp/cmake_file_version/build

# Include any dependencies generated for this target.
include CMakeFiles/Tutorial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Tutorial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tutorial.dir/flags.make

CMakeFiles/Tutorial.dir/tutor.cpp.obj: CMakeFiles/Tutorial.dir/flags.make
CMakeFiles/Tutorial.dir/tutor.cpp.obj: ../tutor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/D/ff/codespace/codespace/cpp/cmake_file_version/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Tutorial.dir/tutor.cpp.obj"
	cd /D/ff/codespace/codespace/cpp/cmake_file_version/build && /C/msys64/mingw64/bin/g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tutorial.dir/tutor.cpp.obj -c /D/ff/codespace/codespace/cpp/cmake_file_version/tutor.cpp

CMakeFiles/Tutorial.dir/tutor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tutorial.dir/tutor.cpp.i"
	cd /D/ff/codespace/codespace/cpp/cmake_file_version/build && /C/msys64/mingw64/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /D/ff/codespace/codespace/cpp/cmake_file_version/tutor.cpp > CMakeFiles/Tutorial.dir/tutor.cpp.i

CMakeFiles/Tutorial.dir/tutor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tutorial.dir/tutor.cpp.s"
	cd /D/ff/codespace/codespace/cpp/cmake_file_version/build && /C/msys64/mingw64/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /D/ff/codespace/codespace/cpp/cmake_file_version/tutor.cpp -o CMakeFiles/Tutorial.dir/tutor.cpp.s

# Object files for target Tutorial
Tutorial_OBJECTS = \
"CMakeFiles/Tutorial.dir/tutor.cpp.obj"

# External object files for target Tutorial
Tutorial_EXTERNAL_OBJECTS =

Tutorial.exe: CMakeFiles/Tutorial.dir/tutor.cpp.obj
Tutorial.exe: CMakeFiles/Tutorial.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/D/ff/codespace/codespace/cpp/cmake_file_version/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Tutorial.exe"
	cd /D/ff/codespace/codespace/cpp/cmake_file_version/build && /C/msys64/mingw64/bin/cmake.exe -E remove -f CMakeFiles/Tutorial.dir/objects.a
	cd /D/ff/codespace/codespace/cpp/cmake_file_version/build && /C/msys64/mingw64/bin/ar.exe cr CMakeFiles/Tutorial.dir/objects.a $(Tutorial_OBJECTS) $(Tutorial_EXTERNAL_OBJECTS)
	cd /D/ff/codespace/codespace/cpp/cmake_file_version/build && /C/msys64/mingw64/bin/g++.exe -g   -Wl,--whole-archive CMakeFiles/Tutorial.dir/objects.a -Wl,--no-whole-archive  -o Tutorial.exe -Wl,--major-image-version,0,--minor-image-version,0 -lkernel32 -luser32 -lgdi32 -lwinspool -lshell32 -lole32 -loleaut32 -luuid -lcomdlg32 -ladvapi32 

# Rule to build all files generated by this target.
CMakeFiles/Tutorial.dir/build: Tutorial.exe

.PHONY : CMakeFiles/Tutorial.dir/build

CMakeFiles/Tutorial.dir/clean:
	cd /D/ff/codespace/codespace/cpp/cmake_file_version/build && $(CMAKE_COMMAND) -P CMakeFiles/Tutorial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tutorial.dir/clean

CMakeFiles/Tutorial.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MSYS Makefiles" /D/ff/codespace/codespace/cpp/cmake_file_version /D/ff/codespace/codespace/cpp/cmake_file_version /D/ff/codespace/codespace/cpp/cmake_file_version/build /D/ff/codespace/codespace/cpp/cmake_file_version/build /D/ff/codespace/codespace/cpp/cmake_file_version/build/CMakeFiles/Tutorial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Tutorial.dir/depend

