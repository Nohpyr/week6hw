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
CMAKE_SOURCE_DIR = /home/option16/Documents/CV2016/Week6/week6hw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/option16/Documents/CV2016/Week6/week6hw/build

# Include any dependencies generated for this target.
include CMakeFiles/recty.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/recty.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/recty.dir/flags.make

CMakeFiles/recty.dir/main.cpp.o: CMakeFiles/recty.dir/flags.make
CMakeFiles/recty.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/option16/Documents/CV2016/Week6/week6hw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/recty.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/recty.dir/main.cpp.o -c /home/option16/Documents/CV2016/Week6/week6hw/main.cpp

CMakeFiles/recty.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/recty.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/option16/Documents/CV2016/Week6/week6hw/main.cpp > CMakeFiles/recty.dir/main.cpp.i

CMakeFiles/recty.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/recty.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/option16/Documents/CV2016/Week6/week6hw/main.cpp -o CMakeFiles/recty.dir/main.cpp.s

CMakeFiles/recty.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/recty.dir/main.cpp.o.requires

CMakeFiles/recty.dir/main.cpp.o.provides: CMakeFiles/recty.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/recty.dir/build.make CMakeFiles/recty.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/recty.dir/main.cpp.o.provides

CMakeFiles/recty.dir/main.cpp.o.provides.build: CMakeFiles/recty.dir/main.cpp.o


# Object files for target recty
recty_OBJECTS = \
"CMakeFiles/recty.dir/main.cpp.o"

# External object files for target recty
recty_EXTERNAL_OBJECTS =

recty: CMakeFiles/recty.dir/main.cpp.o
recty: CMakeFiles/recty.dir/build.make
recty: /usr/lib/i386-linux-gnu/libopencv_videostab.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_ts.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_superres.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_stitching.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_ocl.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_gpu.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_contrib.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_photo.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_legacy.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_video.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_objdetect.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_ml.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_calib3d.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_features2d.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_highgui.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_imgproc.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_flann.so.2.4.9
recty: /usr/lib/i386-linux-gnu/libopencv_core.so.2.4.9
recty: CMakeFiles/recty.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/option16/Documents/CV2016/Week6/week6hw/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable recty"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recty.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/recty.dir/build: recty

.PHONY : CMakeFiles/recty.dir/build

CMakeFiles/recty.dir/requires: CMakeFiles/recty.dir/main.cpp.o.requires

.PHONY : CMakeFiles/recty.dir/requires

CMakeFiles/recty.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/recty.dir/cmake_clean.cmake
.PHONY : CMakeFiles/recty.dir/clean

CMakeFiles/recty.dir/depend:
	cd /home/option16/Documents/CV2016/Week6/week6hw/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/option16/Documents/CV2016/Week6/week6hw /home/option16/Documents/CV2016/Week6/week6hw /home/option16/Documents/CV2016/Week6/week6hw/build /home/option16/Documents/CV2016/Week6/week6hw/build /home/option16/Documents/CV2016/Week6/week6hw/build/CMakeFiles/recty.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/recty.dir/depend
