cmake_minimum_required(VERSION 3.5)

project(lc3simulator)

set (CMAKE_CXX_STANDARD 17)

set(Boost_USE_STATIC_LIBS OFF)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME OFF)
set(Boost_INCLUDE_DIR /root/USTC_Compute_Science_Lab/ICS_Lab/LabS/LAB_S_Attachment/boost_1_45_0)
find_package(Boost 1.45.0 COMPONENTS program_options)

set(SOURCES
    src/main.cpp
    src/memory.cpp
    src/register.cpp
    src/simulator.cpp)

add_executable(lc3simulator ${SOURCES})

target_include_directories(lc3simulator
PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    target_link_libraries(lc3simulator ${Boost_LIBRARIES})
endif()
