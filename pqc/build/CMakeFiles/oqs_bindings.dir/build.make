# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/hp/quantum_encryption_scanner/pqc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hp/quantum_encryption_scanner/pqc/build

# Include any dependencies generated for this target.
include CMakeFiles/oqs_bindings.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/oqs_bindings.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/oqs_bindings.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/oqs_bindings.dir/flags.make

CMakeFiles/oqs_bindings.dir/bindings.cpp.o: CMakeFiles/oqs_bindings.dir/flags.make
CMakeFiles/oqs_bindings.dir/bindings.cpp.o: /home/hp/quantum_encryption_scanner/pqc/bindings.cpp
CMakeFiles/oqs_bindings.dir/bindings.cpp.o: CMakeFiles/oqs_bindings.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hp/quantum_encryption_scanner/pqc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/oqs_bindings.dir/bindings.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/oqs_bindings.dir/bindings.cpp.o -MF CMakeFiles/oqs_bindings.dir/bindings.cpp.o.d -o CMakeFiles/oqs_bindings.dir/bindings.cpp.o -c /home/hp/quantum_encryption_scanner/pqc/bindings.cpp

CMakeFiles/oqs_bindings.dir/bindings.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/oqs_bindings.dir/bindings.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hp/quantum_encryption_scanner/pqc/bindings.cpp > CMakeFiles/oqs_bindings.dir/bindings.cpp.i

CMakeFiles/oqs_bindings.dir/bindings.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/oqs_bindings.dir/bindings.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hp/quantum_encryption_scanner/pqc/bindings.cpp -o CMakeFiles/oqs_bindings.dir/bindings.cpp.s

CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.o: CMakeFiles/oqs_bindings.dir/flags.make
CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.o: /home/hp/quantum_encryption_scanner/pqc/oqs_engine.cpp
CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.o: CMakeFiles/oqs_bindings.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hp/quantum_encryption_scanner/pqc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.o -MF CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.o.d -o CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.o -c /home/hp/quantum_encryption_scanner/pqc/oqs_engine.cpp

CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hp/quantum_encryption_scanner/pqc/oqs_engine.cpp > CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.i

CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hp/quantum_encryption_scanner/pqc/oqs_engine.cpp -o CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.s

# Object files for target oqs_bindings
oqs_bindings_OBJECTS = \
"CMakeFiles/oqs_bindings.dir/bindings.cpp.o" \
"CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.o"

# External object files for target oqs_bindings
oqs_bindings_EXTERNAL_OBJECTS =

oqs_bindings.cpython-312-x86_64-linux-gnu.so: CMakeFiles/oqs_bindings.dir/bindings.cpp.o
oqs_bindings.cpython-312-x86_64-linux-gnu.so: CMakeFiles/oqs_bindings.dir/oqs_engine.cpp.o
oqs_bindings.cpython-312-x86_64-linux-gnu.so: CMakeFiles/oqs_bindings.dir/build.make
oqs_bindings.cpython-312-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libcrypto.so
oqs_bindings.cpython-312-x86_64-linux-gnu.so: CMakeFiles/oqs_bindings.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/hp/quantum_encryption_scanner/pqc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared module oqs_bindings.cpython-312-x86_64-linux-gnu.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/oqs_bindings.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/strip /home/hp/quantum_encryption_scanner/pqc/build/oqs_bindings.cpython-312-x86_64-linux-gnu.so

# Rule to build all files generated by this target.
CMakeFiles/oqs_bindings.dir/build: oqs_bindings.cpython-312-x86_64-linux-gnu.so
.PHONY : CMakeFiles/oqs_bindings.dir/build

CMakeFiles/oqs_bindings.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/oqs_bindings.dir/cmake_clean.cmake
.PHONY : CMakeFiles/oqs_bindings.dir/clean

CMakeFiles/oqs_bindings.dir/depend:
	cd /home/hp/quantum_encryption_scanner/pqc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hp/quantum_encryption_scanner/pqc /home/hp/quantum_encryption_scanner/pqc /home/hp/quantum_encryption_scanner/pqc/build /home/hp/quantum_encryption_scanner/pqc/build /home/hp/quantum_encryption_scanner/pqc/build/CMakeFiles/oqs_bindings.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/oqs_bindings.dir/depend

