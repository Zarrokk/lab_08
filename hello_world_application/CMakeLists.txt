cmake_minimum_required(VERSION 3.22) 

project(hello_world)				

set(SOURCE_EXE hello_world.cpp)			 

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib/)

add_executable(main ${SOURCE_EXE})	

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib/ formatter_ex_lib)

target_link_libraries(main formatter_ex_lib)		 
