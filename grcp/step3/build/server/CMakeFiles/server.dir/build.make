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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/petori/Documents/git/grcp/step3/src/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/petori/Documents/git/grcp/step3/build/server

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/codegen:
.PHONY : CMakeFiles/server.dir/codegen

CMakeFiles/server.dir/server.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server.cpp.o: /Users/petori/Documents/git/grcp/step3/src/server/server.cpp
CMakeFiles/server.dir/server.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/petori/Documents/git/grcp/step3/build/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/server.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server.cpp.o -MF CMakeFiles/server.dir/server.cpp.o.d -o CMakeFiles/server.dir/server.cpp.o -c /Users/petori/Documents/git/grcp/step3/src/server/server.cpp

CMakeFiles/server.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/server.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/petori/Documents/git/grcp/step3/src/server/server.cpp > CMakeFiles/server.dir/server.cpp.i

CMakeFiles/server.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/server.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/petori/Documents/git/grcp/step3/src/server/server.cpp -o CMakeFiles/server.dir/server.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

/Users/petori/Documents/git/grcp/step3/bin/server: CMakeFiles/server.dir/server.cpp.o
/Users/petori/Documents/git/grcp/step3/bin/server: CMakeFiles/server.dir/build.make
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libgrpc++.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libprotobufd.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_leak_check.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_die_if_null.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_initialize.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libutf8_validity.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libgrpc.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_statusor.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libupb_json_lib.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libupb_textformat_lib.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libupb_mini_descriptor_lib.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libupb_wire_lib.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libutf8_range.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libupb_message_lib.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libupb_base_lib.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libupb_mem_lib.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libre2.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Library/Developer/CommandLineTools/SDKs/MacOSX15.2.sdk/usr/lib/libz.tbd
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libcares.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libgpr.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_flags_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_flags_reflection.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_raw_hash_set.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_hashtablez_sampler.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_flags_config.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_flags_program_name.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_flags_private_handle_accessor.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_flags_commandlineflag.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_flags_commandlineflag_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_random_distributions.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_random_seed_sequences.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_random_internal_pool_urbg.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_random_internal_randen.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_random_internal_randen_hwaes.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_random_internal_randen_hwaes_impl.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_random_internal_randen_slow.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_random_internal_platform.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_random_internal_seed_material.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_random_seed_gen_exception.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_status.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_cord.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_cordz_info.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_cord_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_cordz_functions.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_exponential_biased.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_cordz_handle.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_crc_cord_state.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_crc32c.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_crc_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_crc_cpu_detect.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_flags_marshalling.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_internal_check_op.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_internal_conditions.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_internal_message.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_strerror.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_internal_nullguard.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_examine_stack.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_internal_format.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_str_format_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_internal_proto.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_internal_log_sink_set.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_globals.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_hash.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_bad_variant_access.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_city.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_low_level_hash.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_vlog_config_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_bad_optional_access.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_internal_fnmatch.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_synchronization.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_stacktrace.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_symbolize.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_debugging_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_demangle_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_demangle_rust.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_decode_rust_punycode.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_utf8_for_code_point.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_graphcycles_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_kernel_timeout_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_malloc_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_internal_globals.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_sink.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_entry.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_time.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_civil_time.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_time_zone.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_strings.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_int128.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_strings_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_string_view.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_base.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_spinlock_wait.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_throw_delegate.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_raw_logging_internal.a
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libabsl_log_severity.a
/Users/petori/Documents/git/grcp/step3/bin/server: /opt/homebrew/Cellar/openssl@3/3.1.2/lib/libssl.dylib
/Users/petori/Documents/git/grcp/step3/bin/server: /opt/homebrew/Cellar/openssl@3/3.1.2/lib/libcrypto.dylib
/Users/petori/Documents/git/grcp/step3/bin/server: /Users/petori/Documents/software/development/vcpkg/installed/arm64-osx/debug/lib/libaddress_sorting.a
/Users/petori/Documents/git/grcp/step3/bin/server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/petori/Documents/git/grcp/step3/build/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /Users/petori/Documents/git/grcp/step3/bin/server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: /Users/petori/Documents/git/grcp/step3/bin/server
.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /Users/petori/Documents/git/grcp/step3/build/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/petori/Documents/git/grcp/step3/src/server /Users/petori/Documents/git/grcp/step3/src/server /Users/petori/Documents/git/grcp/step3/build/server /Users/petori/Documents/git/grcp/step3/build/server /Users/petori/Documents/git/grcp/step3/build/server/CMakeFiles/server.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/server.dir/depend

