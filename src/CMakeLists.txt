add_executable(main main.c)

include(${sqlite-cmake-demo_SOURCE_DIR}/cmake/sqlite3.cmake)

target_link_libraries(main
    sqlite3
)
