# glob all cpp and hpp files in the current directory
file(GLOB_RECURSE SOURCES "*.cpp" "*.hpp" "*.h")
message(STATUS "SOURCES: ${SOURCES}")
add_executable(example_hw_1 ${SOURCES})
gtest_discover_tests(example_hw_1)
target_link_libraries(example_hw_1 gtest_main)