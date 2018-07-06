cmake_minimum_required(VERSION 3.0)

set(EXTERNAL_LIB_DIR ${CMAKE_CURRENT_BINARY_DIR}/external-lib)
configure_file(
    ${PROJECT_SOURCE_DIR}/cmake/sqlite3-external.cmake ${EXTERNAL_LIB_DIR}/sqlite3-external/CMakeLists.txt
    @ONLY
)
execute_process(COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
    RESULT_VARIABLE result
    WORKING_DIRECTORY ${EXTERNAL_LIB_DIR}/sqlite3-external
)
execute_process(COMMAND ${CMAKE_COMMAND} --build .
    RESULT_VARIABLE result
    WORKING_DIRECTORY ${EXTERNAL_LIB_DIR}/sqlite3-external
)

add_subdirectory(
    ${EXTERNAL_LIB_DIR}/sqlite3-src
    ${EXTERNAL_LIB_DIR}/sqlite3-build
    EXCLUDE_FROM_ALL
)
