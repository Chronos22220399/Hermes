# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = /home/Ess/Code/Cpp/Essearch/Hermes

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/Ess/Code/Cpp/Essearch/Hermes/out/Debug

# Include any dependencies generated for this target.
include CMakeFiles/Hermes.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Hermes.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Hermes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hermes.dir/flags.make

CMakeFiles/Hermes.dir/codegen:
.PHONY : CMakeFiles/Hermes.dir/codegen

CMakeFiles/Hermes.dir/main.cpp.o: CMakeFiles/Hermes.dir/flags.make
CMakeFiles/Hermes.dir/main.cpp.o: /home/Ess/Code/Cpp/Essearch/Hermes/main.cpp
CMakeFiles/Hermes.dir/main.cpp.o: CMakeFiles/Hermes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Ess/Code/Cpp/Essearch/Hermes/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hermes.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hermes.dir/main.cpp.o -MF CMakeFiles/Hermes.dir/main.cpp.o.d -o CMakeFiles/Hermes.dir/main.cpp.o -c /home/Ess/Code/Cpp/Essearch/Hermes/main.cpp

CMakeFiles/Hermes.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hermes.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Ess/Code/Cpp/Essearch/Hermes/main.cpp > CMakeFiles/Hermes.dir/main.cpp.i

CMakeFiles/Hermes.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hermes.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Ess/Code/Cpp/Essearch/Hermes/main.cpp -o CMakeFiles/Hermes.dir/main.cpp.s

CMakeFiles/Hermes.dir/src/Encrypter.cpp.o: CMakeFiles/Hermes.dir/flags.make
CMakeFiles/Hermes.dir/src/Encrypter.cpp.o: /home/Ess/Code/Cpp/Essearch/Hermes/src/Encrypter.cpp
CMakeFiles/Hermes.dir/src/Encrypter.cpp.o: CMakeFiles/Hermes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Ess/Code/Cpp/Essearch/Hermes/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Hermes.dir/src/Encrypter.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hermes.dir/src/Encrypter.cpp.o -MF CMakeFiles/Hermes.dir/src/Encrypter.cpp.o.d -o CMakeFiles/Hermes.dir/src/Encrypter.cpp.o -c /home/Ess/Code/Cpp/Essearch/Hermes/src/Encrypter.cpp

CMakeFiles/Hermes.dir/src/Encrypter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hermes.dir/src/Encrypter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Ess/Code/Cpp/Essearch/Hermes/src/Encrypter.cpp > CMakeFiles/Hermes.dir/src/Encrypter.cpp.i

CMakeFiles/Hermes.dir/src/Encrypter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hermes.dir/src/Encrypter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Ess/Code/Cpp/Essearch/Hermes/src/Encrypter.cpp -o CMakeFiles/Hermes.dir/src/Encrypter.cpp.s

CMakeFiles/Hermes.dir/src/LoginView.cpp.o: CMakeFiles/Hermes.dir/flags.make
CMakeFiles/Hermes.dir/src/LoginView.cpp.o: /home/Ess/Code/Cpp/Essearch/Hermes/src/LoginView.cpp
CMakeFiles/Hermes.dir/src/LoginView.cpp.o: CMakeFiles/Hermes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Ess/Code/Cpp/Essearch/Hermes/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Hermes.dir/src/LoginView.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hermes.dir/src/LoginView.cpp.o -MF CMakeFiles/Hermes.dir/src/LoginView.cpp.o.d -o CMakeFiles/Hermes.dir/src/LoginView.cpp.o -c /home/Ess/Code/Cpp/Essearch/Hermes/src/LoginView.cpp

CMakeFiles/Hermes.dir/src/LoginView.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hermes.dir/src/LoginView.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Ess/Code/Cpp/Essearch/Hermes/src/LoginView.cpp > CMakeFiles/Hermes.dir/src/LoginView.cpp.i

CMakeFiles/Hermes.dir/src/LoginView.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hermes.dir/src/LoginView.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Ess/Code/Cpp/Essearch/Hermes/src/LoginView.cpp -o CMakeFiles/Hermes.dir/src/LoginView.cpp.s

CMakeFiles/Hermes.dir/src/RegisterView.cpp.o: CMakeFiles/Hermes.dir/flags.make
CMakeFiles/Hermes.dir/src/RegisterView.cpp.o: /home/Ess/Code/Cpp/Essearch/Hermes/src/RegisterView.cpp
CMakeFiles/Hermes.dir/src/RegisterView.cpp.o: CMakeFiles/Hermes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Ess/Code/Cpp/Essearch/Hermes/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Hermes.dir/src/RegisterView.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hermes.dir/src/RegisterView.cpp.o -MF CMakeFiles/Hermes.dir/src/RegisterView.cpp.o.d -o CMakeFiles/Hermes.dir/src/RegisterView.cpp.o -c /home/Ess/Code/Cpp/Essearch/Hermes/src/RegisterView.cpp

CMakeFiles/Hermes.dir/src/RegisterView.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hermes.dir/src/RegisterView.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Ess/Code/Cpp/Essearch/Hermes/src/RegisterView.cpp > CMakeFiles/Hermes.dir/src/RegisterView.cpp.i

CMakeFiles/Hermes.dir/src/RegisterView.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hermes.dir/src/RegisterView.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Ess/Code/Cpp/Essearch/Hermes/src/RegisterView.cpp -o CMakeFiles/Hermes.dir/src/RegisterView.cpp.s

CMakeFiles/Hermes.dir/src/Sqlite3.cpp.o: CMakeFiles/Hermes.dir/flags.make
CMakeFiles/Hermes.dir/src/Sqlite3.cpp.o: /home/Ess/Code/Cpp/Essearch/Hermes/src/Sqlite3.cpp
CMakeFiles/Hermes.dir/src/Sqlite3.cpp.o: CMakeFiles/Hermes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Ess/Code/Cpp/Essearch/Hermes/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Hermes.dir/src/Sqlite3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hermes.dir/src/Sqlite3.cpp.o -MF CMakeFiles/Hermes.dir/src/Sqlite3.cpp.o.d -o CMakeFiles/Hermes.dir/src/Sqlite3.cpp.o -c /home/Ess/Code/Cpp/Essearch/Hermes/src/Sqlite3.cpp

CMakeFiles/Hermes.dir/src/Sqlite3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hermes.dir/src/Sqlite3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/Ess/Code/Cpp/Essearch/Hermes/src/Sqlite3.cpp > CMakeFiles/Hermes.dir/src/Sqlite3.cpp.i

CMakeFiles/Hermes.dir/src/Sqlite3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hermes.dir/src/Sqlite3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/Ess/Code/Cpp/Essearch/Hermes/src/Sqlite3.cpp -o CMakeFiles/Hermes.dir/src/Sqlite3.cpp.s

# Object files for target Hermes
Hermes_OBJECTS = \
"CMakeFiles/Hermes.dir/main.cpp.o" \
"CMakeFiles/Hermes.dir/src/Encrypter.cpp.o" \
"CMakeFiles/Hermes.dir/src/LoginView.cpp.o" \
"CMakeFiles/Hermes.dir/src/RegisterView.cpp.o" \
"CMakeFiles/Hermes.dir/src/Sqlite3.cpp.o"

# External object files for target Hermes
Hermes_EXTERNAL_OBJECTS =

Hermes: CMakeFiles/Hermes.dir/main.cpp.o
Hermes: CMakeFiles/Hermes.dir/src/Encrypter.cpp.o
Hermes: CMakeFiles/Hermes.dir/src/LoginView.cpp.o
Hermes: CMakeFiles/Hermes.dir/src/RegisterView.cpp.o
Hermes: CMakeFiles/Hermes.dir/src/Sqlite3.cpp.o
Hermes: CMakeFiles/Hermes.dir/build.make
Hermes: CMakeFiles/Hermes.dir/compiler_depend.ts
Hermes: /usr/lib/libsodium.so
Hermes: /usr/lib/libspdlog.so.1.15.0
Hermes: /usr/lib/libsqlite3.so
Hermes: /usr/lib/libfmt.so.11.1.1
Hermes: CMakeFiles/Hermes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/Ess/Code/Cpp/Essearch/Hermes/out/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Hermes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Hermes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hermes.dir/build: Hermes
.PHONY : CMakeFiles/Hermes.dir/build

CMakeFiles/Hermes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Hermes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Hermes.dir/clean

CMakeFiles/Hermes.dir/depend:
	cd /home/Ess/Code/Cpp/Essearch/Hermes/out/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/Ess/Code/Cpp/Essearch/Hermes /home/Ess/Code/Cpp/Essearch/Hermes /home/Ess/Code/Cpp/Essearch/Hermes/out/Debug /home/Ess/Code/Cpp/Essearch/Hermes/out/Debug /home/Ess/Code/Cpp/Essearch/Hermes/out/Debug/CMakeFiles/Hermes.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Hermes.dir/depend
