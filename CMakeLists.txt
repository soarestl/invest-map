cmake_minimum_required(VERSION 3.10)
project(invest_map)

include_directories(include)

file(GLOB SOURCES "src/*.c")

add_executable(invest_map ${SOURCES})