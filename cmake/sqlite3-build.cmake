cmake_minimum_required(VERSION 3.0)
project(sqlite3)

find_package(Threads)

add_library(sqlite3 SHARED sqlite3.c)

if(NOT WIN32)
    target_link_libraries(sqlite3 pthread dl)
endif()

target_include_directories(sqlite3 PUBLIC $<BUILD_INTERFACE:${SQLITE3_SOURCE_DIR}>)
