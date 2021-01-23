cmake_minimum_required(VERSION 3.10)
project(invest_map)

add_compile_options(-Wall -Wextra -pedantic -Werror)

SET(GCC_COVERAGE_LINK_FLAGS "-I/usr/local/include/libbson-1.0 -I/usr/local/include/libmongoc-1.0 -lbson-1.0 -lmongoc-1.0")
SET(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_LINK_FLAGS}")

include_directories(include)
file(GLOB SOURCES "src/*.c")

add_executable(invest_map ${SOURCES})