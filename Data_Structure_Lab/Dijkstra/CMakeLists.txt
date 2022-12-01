project(Dijkstra C)
cmake_minimum_required( VERSION 3.4 )

SET(CMAKE_BUILD_TYPE "Debug")
set(SRC_LIST Dijkstra.c Graph.c Classic.c Compress.c Fibheap_Dijkstra.c Fibheap.c)
set(PROJECT_NAME Dijkstra)

include_directories(include)
add_subdirectory(src bin)