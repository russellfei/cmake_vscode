cmake_minimum_required(VERSION 2.6)
project(Tutorial)
set (Tutorial_VERSION_MAJOR 1)
set (Tutorial_VERSION_MINOR 2)

configure_file(
    "${PROJECT_SOURCE_DIR}/TutorCfg.h.in"
    "${PROJECT_BINARY_DIR}/TutorCfg.h"
)

include_directories("${PROJECT_BINARY_DIR}")
add_executable(Tutorial tutor.cpp)