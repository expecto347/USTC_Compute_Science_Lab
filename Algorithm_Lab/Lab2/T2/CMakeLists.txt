# 1. 声明要求的cmake最低版本
cmake_minimum_required( VERSION 2.8 )
# 2. 添加c++11标准支持
#set( CMAKE_CXX_FLAGS "-std=c++11" )
# 3. 声明一个cmake工程
PROJECT(T2)
MESSAGE(STATUS "Project: SERVER") #打印相关消息消息

# 5. 通过设定SRC变量，将源代码路径都给SRC，如果有多个，可以直接在后面继续添加
set(SRC
${PROJECT_SOURCE_DIR}/T2.c
)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

# 可执行文件生成
add_executable(${PROJECT_NAME} ${SRC})
