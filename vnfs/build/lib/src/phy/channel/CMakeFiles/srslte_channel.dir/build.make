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
include lib/src/phy/channel/CMakeFiles/srslte_channel.dir/depend.make

# Include the progress variables for this target.
include lib/src/phy/channel/CMakeFiles/srslte_channel.dir/progress.make

# Include the compile flags for this target's objects.
include lib/src/phy/channel/CMakeFiles/srslte_channel.dir/flags.make

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/flags.make
lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o: ../lib/src/phy/channel/ch_awgn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Lte-setup-bell/vnfs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o"
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/channel && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/srslte_channel.dir/ch_awgn.c.o   -c /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/channel/ch_awgn.c

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/srslte_channel.dir/ch_awgn.c.i"
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/channel && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/channel/ch_awgn.c > CMakeFiles/srslte_channel.dir/ch_awgn.c.i

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/srslte_channel.dir/ch_awgn.c.s"
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/channel && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/channel/ch_awgn.c -o CMakeFiles/srslte_channel.dir/ch_awgn.c.s

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o.requires:

.PHONY : lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o.requires

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o.provides: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o.requires
	$(MAKE) -f lib/src/phy/channel/CMakeFiles/srslte_channel.dir/build.make lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o.provides.build
.PHONY : lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o.provides

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o.provides.build: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o


lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/flags.make
lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o: ../lib/src/phy/channel/gauss.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Lte-setup-bell/vnfs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o"
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/channel && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/srslte_channel.dir/gauss.c.o   -c /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/channel/gauss.c

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/srslte_channel.dir/gauss.c.i"
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/channel && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/channel/gauss.c > CMakeFiles/srslte_channel.dir/gauss.c.i

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/srslte_channel.dir/gauss.c.s"
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/channel && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/channel/gauss.c -o CMakeFiles/srslte_channel.dir/gauss.c.s

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o.requires:

.PHONY : lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o.requires

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o.provides: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o.requires
	$(MAKE) -f lib/src/phy/channel/CMakeFiles/srslte_channel.dir/build.make lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o.provides.build
.PHONY : lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o.provides

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o.provides.build: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o


srslte_channel: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o
srslte_channel: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o
srslte_channel: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/build.make

.PHONY : srslte_channel

# Rule to build all files generated by this target.
lib/src/phy/channel/CMakeFiles/srslte_channel.dir/build: srslte_channel

.PHONY : lib/src/phy/channel/CMakeFiles/srslte_channel.dir/build

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/requires: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/ch_awgn.c.o.requires
lib/src/phy/channel/CMakeFiles/srslte_channel.dir/requires: lib/src/phy/channel/CMakeFiles/srslte_channel.dir/gauss.c.o.requires

.PHONY : lib/src/phy/channel/CMakeFiles/srslte_channel.dir/requires

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/clean:
	cd /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/channel && $(CMAKE_COMMAND) -P CMakeFiles/srslte_channel.dir/cmake_clean.cmake
.PHONY : lib/src/phy/channel/CMakeFiles/srslte_channel.dir/clean

lib/src/phy/channel/CMakeFiles/srslte_channel.dir/depend:
	cd /home/ubuntu/Lte-setup-bell/vnfs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Lte-setup-bell/vnfs /home/ubuntu/Lte-setup-bell/vnfs/lib/src/phy/channel /home/ubuntu/Lte-setup-bell/vnfs/build /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/channel /home/ubuntu/Lte-setup-bell/vnfs/build/lib/src/phy/channel/CMakeFiles/srslte_channel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/src/phy/channel/CMakeFiles/srslte_channel.dir/depend

