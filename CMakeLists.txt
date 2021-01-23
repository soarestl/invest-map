cmake_minimum_required(VERSION 3.10)
project(invest_map)

add_compile_options(-Wall -Wextra -pedantic -Werror)

SET(GCC_COVERAGE_LINK_FLAGS " -pthread")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${GCC_COVERAGE_LINK_FLAGS}")

include_directories(include)
file(GLOB SOURCES "src/*.c")

add_executable(invest_map ${SOURCES})
target_link_libraries(invest_map ${CMAKE_DL_LIBS})
