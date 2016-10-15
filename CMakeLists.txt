cmake_minimum_required(VERSION 2.8)

project(recty)

add_executable(recty main.cpp)

find_package(OpenCV REQUIRED)
target_link_libraries(recty ${OpenCV_LIBS})
