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
CMAKE_SOURCE_DIR = /home/wangwei/QtProjects/Github/EventDetector/EventDetector

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wangwei/QtProjects/Github/EventDetector/EventDetector

# Include any dependencies generated for this target.
include CMakeFiles/EventDetector.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/EventDetector.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/EventDetector.dir/flags.make

CMakeFiles/EventDetector.dir/main.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/EventDetector.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/main.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/main.cpp

CMakeFiles/EventDetector.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/main.cpp > CMakeFiles/EventDetector.dir/main.cpp.i

CMakeFiles/EventDetector.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/main.cpp -o CMakeFiles/EventDetector.dir/main.cpp.s

CMakeFiles/EventDetector.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/main.cpp.o.requires

CMakeFiles/EventDetector.dir/main.cpp.o.provides: CMakeFiles/EventDetector.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/main.cpp.o.provides

CMakeFiles/EventDetector.dir/main.cpp.o.provides.build: CMakeFiles/EventDetector.dir/main.cpp.o


CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o: feature_aggregator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/feature_aggregator.cpp

CMakeFiles/EventDetector.dir/feature_aggregator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/feature_aggregator.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/feature_aggregator.cpp > CMakeFiles/EventDetector.dir/feature_aggregator.cpp.i

CMakeFiles/EventDetector.dir/feature_aggregator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/feature_aggregator.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/feature_aggregator.cpp -o CMakeFiles/EventDetector.dir/feature_aggregator.cpp.s

CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o.requires

CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o.provides: CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o.provides

CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o.provides.build: CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o


CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o: feature_normalizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/feature_normalizer.cpp

CMakeFiles/EventDetector.dir/feature_normalizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/feature_normalizer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/feature_normalizer.cpp > CMakeFiles/EventDetector.dir/feature_normalizer.cpp.i

CMakeFiles/EventDetector.dir/feature_normalizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/feature_normalizer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/feature_normalizer.cpp -o CMakeFiles/EventDetector.dir/feature_normalizer.cpp.s

CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o.requires

CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o.provides: CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o.provides

CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o.provides.build: CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o


CMakeFiles/EventDetector.dir/fft_window.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/fft_window.cpp.o: fft_window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/EventDetector.dir/fft_window.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/fft_window.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/fft_window.cpp

CMakeFiles/EventDetector.dir/fft_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/fft_window.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/fft_window.cpp > CMakeFiles/EventDetector.dir/fft_window.cpp.i

CMakeFiles/EventDetector.dir/fft_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/fft_window.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/fft_window.cpp -o CMakeFiles/EventDetector.dir/fft_window.cpp.s

CMakeFiles/EventDetector.dir/fft_window.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/fft_window.cpp.o.requires

CMakeFiles/EventDetector.dir/fft_window.cpp.o.provides: CMakeFiles/EventDetector.dir/fft_window.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/fft_window.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/fft_window.cpp.o.provides

CMakeFiles/EventDetector.dir/fft_window.cpp.o.provides.build: CMakeFiles/EventDetector.dir/fft_window.cpp.o


CMakeFiles/EventDetector.dir/mel_basis.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/mel_basis.cpp.o: mel_basis.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/EventDetector.dir/mel_basis.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/mel_basis.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/mel_basis.cpp

CMakeFiles/EventDetector.dir/mel_basis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/mel_basis.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/mel_basis.cpp > CMakeFiles/EventDetector.dir/mel_basis.cpp.i

CMakeFiles/EventDetector.dir/mel_basis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/mel_basis.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/mel_basis.cpp -o CMakeFiles/EventDetector.dir/mel_basis.cpp.s

CMakeFiles/EventDetector.dir/mel_basis.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/mel_basis.cpp.o.requires

CMakeFiles/EventDetector.dir/mel_basis.cpp.o.provides: CMakeFiles/EventDetector.dir/mel_basis.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/mel_basis.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/mel_basis.cpp.o.provides

CMakeFiles/EventDetector.dir/mel_basis.cpp.o.provides.build: CMakeFiles/EventDetector.dir/mel_basis.cpp.o


CMakeFiles/EventDetector.dir/weights.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/weights.cpp.o: weights.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/EventDetector.dir/weights.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/weights.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/weights.cpp

CMakeFiles/EventDetector.dir/weights.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/weights.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/weights.cpp > CMakeFiles/EventDetector.dir/weights.cpp.i

CMakeFiles/EventDetector.dir/weights.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/weights.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/weights.cpp -o CMakeFiles/EventDetector.dir/weights.cpp.s

CMakeFiles/EventDetector.dir/weights.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/weights.cpp.o.requires

CMakeFiles/EventDetector.dir/weights.cpp.o.provides: CMakeFiles/EventDetector.dir/weights.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/weights.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/weights.cpp.o.provides

CMakeFiles/EventDetector.dir/weights.cpp.o.provides.build: CMakeFiles/EventDetector.dir/weights.cpp.o


CMakeFiles/EventDetector.dir/model.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/model.cpp.o: model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/EventDetector.dir/model.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/model.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/model.cpp

CMakeFiles/EventDetector.dir/model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/model.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/model.cpp > CMakeFiles/EventDetector.dir/model.cpp.i

CMakeFiles/EventDetector.dir/model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/model.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/model.cpp -o CMakeFiles/EventDetector.dir/model.cpp.s

CMakeFiles/EventDetector.dir/model.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/model.cpp.o.requires

CMakeFiles/EventDetector.dir/model.cpp.o.provides: CMakeFiles/EventDetector.dir/model.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/model.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/model.cpp.o.provides

CMakeFiles/EventDetector.dir/model.cpp.o.provides.build: CMakeFiles/EventDetector.dir/model.cpp.o


CMakeFiles/EventDetector.dir/postprocessing.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/postprocessing.cpp.o: postprocessing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/EventDetector.dir/postprocessing.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/postprocessing.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/postprocessing.cpp

CMakeFiles/EventDetector.dir/postprocessing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/postprocessing.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/postprocessing.cpp > CMakeFiles/EventDetector.dir/postprocessing.cpp.i

CMakeFiles/EventDetector.dir/postprocessing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/postprocessing.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/postprocessing.cpp -o CMakeFiles/EventDetector.dir/postprocessing.cpp.s

CMakeFiles/EventDetector.dir/postprocessing.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/postprocessing.cpp.o.requires

CMakeFiles/EventDetector.dir/postprocessing.cpp.o.provides: CMakeFiles/EventDetector.dir/postprocessing.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/postprocessing.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/postprocessing.cpp.o.provides

CMakeFiles/EventDetector.dir/postprocessing.cpp.o.provides.build: CMakeFiles/EventDetector.dir/postprocessing.cpp.o


CMakeFiles/EventDetector.dir/wavread.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/wavread.cpp.o: wavread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/EventDetector.dir/wavread.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/wavread.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/wavread.cpp

CMakeFiles/EventDetector.dir/wavread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/wavread.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/wavread.cpp > CMakeFiles/EventDetector.dir/wavread.cpp.i

CMakeFiles/EventDetector.dir/wavread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/wavread.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/wavread.cpp -o CMakeFiles/EventDetector.dir/wavread.cpp.s

CMakeFiles/EventDetector.dir/wavread.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/wavread.cpp.o.requires

CMakeFiles/EventDetector.dir/wavread.cpp.o.provides: CMakeFiles/EventDetector.dir/wavread.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/wavread.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/wavread.cpp.o.provides

CMakeFiles/EventDetector.dir/wavread.cpp.o.provides.build: CMakeFiles/EventDetector.dir/wavread.cpp.o


CMakeFiles/EventDetector.dir/preprocessing.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/preprocessing.cpp.o: preprocessing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/EventDetector.dir/preprocessing.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/preprocessing.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/preprocessing.cpp

CMakeFiles/EventDetector.dir/preprocessing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/preprocessing.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/preprocessing.cpp > CMakeFiles/EventDetector.dir/preprocessing.cpp.i

CMakeFiles/EventDetector.dir/preprocessing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/preprocessing.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/preprocessing.cpp -o CMakeFiles/EventDetector.dir/preprocessing.cpp.s

CMakeFiles/EventDetector.dir/preprocessing.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/preprocessing.cpp.o.requires

CMakeFiles/EventDetector.dir/preprocessing.cpp.o.provides: CMakeFiles/EventDetector.dir/preprocessing.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/preprocessing.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/preprocessing.cpp.o.provides

CMakeFiles/EventDetector.dir/preprocessing.cpp.o.provides.build: CMakeFiles/EventDetector.dir/preprocessing.cpp.o


CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o: TestLocalFile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/TestLocalFile.cpp

CMakeFiles/EventDetector.dir/TestLocalFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/TestLocalFile.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/TestLocalFile.cpp > CMakeFiles/EventDetector.dir/TestLocalFile.cpp.i

CMakeFiles/EventDetector.dir/TestLocalFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/TestLocalFile.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/TestLocalFile.cpp -o CMakeFiles/EventDetector.dir/TestLocalFile.cpp.s

CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o.requires

CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o.provides: CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o.provides

CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o.provides.build: CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o


CMakeFiles/EventDetector.dir/EventDetector.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/EventDetector.cpp.o: EventDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/EventDetector.dir/EventDetector.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/EventDetector.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/EventDetector.cpp

CMakeFiles/EventDetector.dir/EventDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/EventDetector.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/EventDetector.cpp > CMakeFiles/EventDetector.dir/EventDetector.cpp.i

CMakeFiles/EventDetector.dir/EventDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/EventDetector.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/EventDetector.cpp -o CMakeFiles/EventDetector.dir/EventDetector.cpp.s

CMakeFiles/EventDetector.dir/EventDetector.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/EventDetector.cpp.o.requires

CMakeFiles/EventDetector.dir/EventDetector.cpp.o.provides: CMakeFiles/EventDetector.dir/EventDetector.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/EventDetector.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/EventDetector.cpp.o.provides

CMakeFiles/EventDetector.dir/EventDetector.cpp.o.provides.build: CMakeFiles/EventDetector.dir/EventDetector.cpp.o


CMakeFiles/EventDetector.dir/File.cpp.o: CMakeFiles/EventDetector.dir/flags.make
CMakeFiles/EventDetector.dir/File.cpp.o: File.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/EventDetector.dir/File.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EventDetector.dir/File.cpp.o -c /home/wangwei/QtProjects/Github/EventDetector/EventDetector/File.cpp

CMakeFiles/EventDetector.dir/File.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EventDetector.dir/File.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wangwei/QtProjects/Github/EventDetector/EventDetector/File.cpp > CMakeFiles/EventDetector.dir/File.cpp.i

CMakeFiles/EventDetector.dir/File.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EventDetector.dir/File.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wangwei/QtProjects/Github/EventDetector/EventDetector/File.cpp -o CMakeFiles/EventDetector.dir/File.cpp.s

CMakeFiles/EventDetector.dir/File.cpp.o.requires:

.PHONY : CMakeFiles/EventDetector.dir/File.cpp.o.requires

CMakeFiles/EventDetector.dir/File.cpp.o.provides: CMakeFiles/EventDetector.dir/File.cpp.o.requires
	$(MAKE) -f CMakeFiles/EventDetector.dir/build.make CMakeFiles/EventDetector.dir/File.cpp.o.provides.build
.PHONY : CMakeFiles/EventDetector.dir/File.cpp.o.provides

CMakeFiles/EventDetector.dir/File.cpp.o.provides.build: CMakeFiles/EventDetector.dir/File.cpp.o


# Object files for target EventDetector
EventDetector_OBJECTS = \
"CMakeFiles/EventDetector.dir/main.cpp.o" \
"CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o" \
"CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o" \
"CMakeFiles/EventDetector.dir/fft_window.cpp.o" \
"CMakeFiles/EventDetector.dir/mel_basis.cpp.o" \
"CMakeFiles/EventDetector.dir/weights.cpp.o" \
"CMakeFiles/EventDetector.dir/model.cpp.o" \
"CMakeFiles/EventDetector.dir/postprocessing.cpp.o" \
"CMakeFiles/EventDetector.dir/wavread.cpp.o" \
"CMakeFiles/EventDetector.dir/preprocessing.cpp.o" \
"CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o" \
"CMakeFiles/EventDetector.dir/EventDetector.cpp.o" \
"CMakeFiles/EventDetector.dir/File.cpp.o"

# External object files for target EventDetector
EventDetector_EXTERNAL_OBJECTS =

bin/EventDetector: CMakeFiles/EventDetector.dir/main.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/fft_window.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/mel_basis.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/weights.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/model.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/postprocessing.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/wavread.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/preprocessing.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/EventDetector.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/File.cpp.o
bin/EventDetector: CMakeFiles/EventDetector.dir/build.make
bin/EventDetector: CMakeFiles/EventDetector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable bin/EventDetector"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/EventDetector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/EventDetector.dir/build: bin/EventDetector

.PHONY : CMakeFiles/EventDetector.dir/build

CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/main.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/feature_aggregator.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/feature_normalizer.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/fft_window.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/mel_basis.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/weights.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/model.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/postprocessing.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/wavread.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/preprocessing.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/TestLocalFile.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/EventDetector.cpp.o.requires
CMakeFiles/EventDetector.dir/requires: CMakeFiles/EventDetector.dir/File.cpp.o.requires

.PHONY : CMakeFiles/EventDetector.dir/requires

CMakeFiles/EventDetector.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/EventDetector.dir/cmake_clean.cmake
.PHONY : CMakeFiles/EventDetector.dir/clean

CMakeFiles/EventDetector.dir/depend:
	cd /home/wangwei/QtProjects/Github/EventDetector/EventDetector && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wangwei/QtProjects/Github/EventDetector/EventDetector /home/wangwei/QtProjects/Github/EventDetector/EventDetector /home/wangwei/QtProjects/Github/EventDetector/EventDetector /home/wangwei/QtProjects/Github/EventDetector/EventDetector /home/wangwei/QtProjects/Github/EventDetector/EventDetector/CMakeFiles/EventDetector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/EventDetector.dir/depend
