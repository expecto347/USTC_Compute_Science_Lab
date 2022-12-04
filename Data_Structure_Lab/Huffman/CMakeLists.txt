project(Huffman C)
cmake_minimum_required( VERSION 3.4 )

SET(CMAKE_BUILD_TYPE "Debug")
set(SRC_LIST main.c bitstream.c Huffman.c)
set(PROJECT_NAME Huffman)

include_directories(include)
add_subdirectory(src bin)