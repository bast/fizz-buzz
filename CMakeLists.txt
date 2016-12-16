cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project(fizz-buzz)

enable_language(CXX)
enable_language(Fortran)

# specify where to place binaries and libraries
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY
    ${CMAKE_BINARY_DIR}/bin
    )
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY
    ${CMAKE_BINARY_DIR}/lib
    )

# tell CMake where to find *.cmake module files
set(CMAKE_MODULE_PATH
    ${CMAKE_MODULE_PATH}
    ${PROJECT_SOURCE_DIR}/cmake
    )

include(version)
include(arch)

add_subdirectory(src)

include(tests)
include(packaging)
