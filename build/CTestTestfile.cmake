# CMake generated Testfile for 
# Source directory: /media/projects/personal/cjadv
# Build directory: /media/projects/personal/cjadv/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cJSON_test "/media/projects/personal/cjadv/build/cJSON_test")
set_tests_properties(cJSON_test PROPERTIES  _BACKTRACE_TRIPLES "/media/projects/personal/cjadv/CMakeLists.txt;252;add_test;/media/projects/personal/cjadv/CMakeLists.txt;0;")
subdirs("tests")
subdirs("fuzzing")
