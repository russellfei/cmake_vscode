cmake_minimum_required(VERSION 2.6)
project(Tutorial)

# The version number.
set (Tutorial_VERSION_MAJOR 1)
set (Tutorial_VERSION_MINOR 0)

configure_file (
  "${PROJECT_SOURCE_DIR}/TutorialConfig.h.in"
  "${PROJECT_BINARY_DIR}/TutorialConfig.h"
  ) 
include_directories("${PROJECT_BINARY_DIR}")

option (USE_MYMATH "Use tutorial provided math implementation" ON)
if (USE_MYMATH)
    include_directories ("$(PROJECT_SOURCE_DIR}/mathFunc")
    add_subdirectory(mathFunc)
    set (EXTRA_LIBS ${EXTRA_LIBS} mathFunc)
endif (USE_MYMATH)

add_executable(Tutorial tutorial.cpp)
target_link_libraries(Tutorial ${EXTRA_LIBS})
