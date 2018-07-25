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
CMAKE_SOURCE_DIR = /home/ubuntu/Lte-setup-bell/vnfs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Lte-setup-bell/vnfs/build

# Include any dependencies generated for this target.
include lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/depend.make

# Include the progress variables for this target.
include lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/progress.make

# Include the compile flags for this target's objects.
include lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/flags.make

lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o: lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/flags.make
lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o: ../lib/src/phy/ch_estimation/test/chest_test_ul.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Lte-setup-bell/vnfs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o"
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/ch_estimation/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o   -c /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/ch_estimation/test/chest_test_ul.c

lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chest_test_ul.dir/chest_test_ul.c.i"
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/ch_estimation/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/ch_estimation/test/chest_test_ul.c > CMakeFiles/chest_test_ul.dir/chest_test_ul.c.i

lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chest_test_ul.dir/chest_test_ul.c.s"
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/ch_estimation/test && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/ch_estimation/test/chest_test_ul.c -o CMakeFiles/chest_test_ul.dir/chest_test_ul.c.s

lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o.requires:

.PHONY : lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o.requires

lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o.provides: lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o.requires
	$(MAKE) -f lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/build.make lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o.provides.build
.PHONY : lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o.provides

lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o.provides.build: lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o


# Object files for target chest_test_ul
chest_test_ul_OBJECTS = \
"CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o"

# External object files for target chest_test_ul
chest_test_ul_EXTERNAL_OBJECTS =

lib/src/phy/ch_estimation/test/chest_test_ul: lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o
lib/src/phy/ch_estimation/test/chest_test_ul: lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/build.make
lib/src/phy/ch_estimation/test/chest_test_ul: lib/src/phy/libsrslte_phy.a
lib/src/phy/ch_estimation/test/chest_test_ul: lib/src/common/libsrslte_common.a
lib/src/phy/ch_estimation/test/chest_test_ul: /usr/lib/x86_64-linux-gnu/libfftw3f.so
lib/src/phy/ch_estimation/test/chest_test_ul: /usr/lib/x86_64-linux-gnu/libmbedcrypto.so
lib/src/phy/ch_estimation/test/chest_test_ul: lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Lte-setup-bell/vnfs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable chest_test_ul"
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/ch_estimation/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chest_test_ul.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/build: lib/src/phy/ch_estimation/test/chest_test_ul

.PHONY : lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/build

lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/requires: lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/chest_test_ul.c.o.requires

.PHONY : lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/requires

lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/clean:
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/ch_estimation/test && $(CMAKE_COMMAND) -P CMakeFiles/chest_test_ul.dir/cmake_clean.cmake
.PHONY : lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/clean

lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/depend:
	cd /home/ubuntu/Lte-setup-bell/vnfs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Lte-setup-bell/vnfs /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/ch_estimation/test /home/ubuntu/Lte-setup-bell/vnfs/build /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/ch_estimation/test /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/src/phy/ch_estimation/test/CMakeFiles/chest_test_ul.dir/depend

