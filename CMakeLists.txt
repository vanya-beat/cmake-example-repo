cmake_minimum_required(VERSION 3.14)
project(example_hw_repo)

# Set C++26 standard globally
set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# MSVC-specific settings
if(MSVC)
  add_compile_options(/W4 /utf-8)
  # For GoogleTest: prevent overriding the parent project's compiler/linker settings
  set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
else()
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

include(FetchContent)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        v1.14.0
)
FetchContent_MakeAvailable(googletest)

enable_testing()
include(GoogleTest)
#glob all directories who end with _hw
file(GLOB hw_dirs RELATIVE ${CMAKE_SOURCE_DIR} ${CMAKE_SOURCE_DIR}/*_hw)
message("hw_dirs: ${hw_dirs}")
add_subdirectory(${hw_dirs})