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
CMAKE_SOURCE_DIR = /home/mdasari/Lte-setup-bell/vnfs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mdasari/Lte-setup-bell/vnfs/build

# Include any dependencies generated for this target.
include lib/examples/CMakeFiles/cell_measurement.dir/depend.make

# Include the progress variables for this target.
include lib/examples/CMakeFiles/cell_measurement.dir/progress.make

# Include the compile flags for this target's objects.
include lib/examples/CMakeFiles/cell_measurement.dir/flags.make

lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o: lib/examples/CMakeFiles/cell_measurement.dir/flags.make
lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o: ../lib/examples/cell_measurement.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mdasari/Lte-setup-bell/vnfs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o"
	cd /home/mdasari/Lte-setup-bell/vnfs/build/lib/examples && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cell_measurement.dir/cell_measurement.c.o   -c /home/mdasari/Lte-setup-bell/vnfs/lib/examples/cell_measurement.c

lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cell_measurement.dir/cell_measurement.c.i"
	cd /home/mdasari/Lte-setup-bell/vnfs/build/lib/examples && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mdasari/Lte-setup-bell/vnfs/lib/examples/cell_measurement.c > CMakeFiles/cell_measurement.dir/cell_measurement.c.i

lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cell_measurement.dir/cell_measurement.c.s"
	cd /home/mdasari/Lte-setup-bell/vnfs/build/lib/examples && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mdasari/Lte-setup-bell/vnfs/lib/examples/cell_measurement.c -o CMakeFiles/cell_measurement.dir/cell_measurement.c.s

lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o.requires:

.PHONY : lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o.requires

lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o.provides: lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o.requires
	$(MAKE) -f lib/examples/CMakeFiles/cell_measurement.dir/build.make lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o.provides.build
.PHONY : lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o.provides

lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o.provides.build: lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o


# Object files for target cell_measurement
cell_measurement_OBJECTS = \
"CMakeFiles/cell_measurement.dir/cell_measurement.c.o"

# External object files for target cell_measurement
cell_measurement_EXTERNAL_OBJECTS =

lib/examples/cell_measurement: lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o
lib/examples/cell_measurement: lib/examples/CMakeFiles/cell_measurement.dir/build.make
lib/examples/cell_measurement: lib/src/phy/libsrslte_phy.a
lib/examples/cell_measurement: lib/src/phy/rf/libsrslte_rf.so
lib/examples/cell_measurement: lib/src/phy/rf/libsrslte_rf_utils.a
lib/examples/cell_measurement: lib/src/phy/libsrslte_phy.a
lib/examples/cell_measurement: /usr/lib/x86_64-linux-gnu/libfftw3f.so
lib/examples/cell_measurement: /usr/lib/x86_64-linux-gnu/libuhd.so
lib/examples/cell_measurement: /usr/lib/x86_64-linux-gnu/libbladeRF.so
lib/examples/cell_measurement: /usr/lib/x86_64-linux-gnu/libSoapySDR.so
lib/examples/cell_measurement: lib/examples/CMakeFiles/cell_measurement.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mdasari/Lte-setup-bell/vnfs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cell_measurement"
	cd /home/mdasari/Lte-setup-bell/vnfs/build/lib/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cell_measurement.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/examples/CMakeFiles/cell_measurement.dir/build: lib/examples/cell_measurement

.PHONY : lib/examples/CMakeFiles/cell_measurement.dir/build

lib/examples/CMakeFiles/cell_measurement.dir/requires: lib/examples/CMakeFiles/cell_measurement.dir/cell_measurement.c.o.requires

.PHONY : lib/examples/CMakeFiles/cell_measurement.dir/requires

lib/examples/CMakeFiles/cell_measurement.dir/clean:
	cd /home/mdasari/Lte-setup-bell/vnfs/build/lib/examples && $(CMAKE_COMMAND) -P CMakeFiles/cell_measurement.dir/cmake_clean.cmake
.PHONY : lib/examples/CMakeFiles/cell_measurement.dir/clean

lib/examples/CMakeFiles/cell_measurement.dir/depend:
	cd /home/mdasari/Lte-setup-bell/vnfs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mdasari/Lte-setup-bell/vnfs /home/mdasari/Lte-setup-bell/vnfs/lib/examples /home/mdasari/Lte-setup-bell/vnfs/build /home/mdasari/Lte-setup-bell/vnfs/build/lib/examples /home/mdasari/Lte-setup-bell/vnfs/build/lib/examples/CMakeFiles/cell_measurement.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/examples/CMakeFiles/cell_measurement.dir/depend

