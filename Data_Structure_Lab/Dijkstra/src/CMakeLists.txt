add_executable(${PROJECT_NAME} ${SRC_LIST})
add_subdirectory(lib bin)
target_link_libraries(${PROJECT_NAME} lib)