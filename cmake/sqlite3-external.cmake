cmake_minimum_required(VERSION 3.0)

include(ExternalProject)
ExternalProject_Add(sqlite3
    URL               https://www.sqlite.org/2018/sqlite-amalgamation-3240000.zip
    URL_HASH          SHA1=fed8b1c04c63ce200773586422c9976b54f408cc
    SOURCE_DIR        @EXTERNAL_LIB_DIR@/sqlite3-src
    BINARY_DIR        @EXTERNAL_LIB_DIR@/sqlite3-build
    CONFIGURE_COMMAND ""
    BUILD_COMMAND     ""
    INSTALL_COMMAND   ""
    TEST_COMMAND      ""
    PATCH_COMMAND
        COMMAND cp @PROJECT_SOURCE_DIR@/cmake/sqlite3-build.cmake @EXTERNAL_LIB_DIR@/sqlite3-src/CMakeLists.txt
)
