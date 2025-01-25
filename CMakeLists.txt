cmake_minimum_required(VERSION 3.10)

project(
  Hermes
  VERSION 1.0
  DESCRIPTION "provide a api service for Essearch"
  LANGUAGES CXX)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(CMAKE_SUPPRESS_REGENERATION FALSE)
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
# set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ~/.install)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/CMake")
# set(CMAKE_PREFIX_PATH "/usr/local/lib/cmake/Sqlpp11")

find_package(fmt REQUIRED)
# sqlpp11
find_package(sqlpp11 REQUIRED CONFIG)
# find_package(sqlpp11SQLite3 REQUIRED CONFIG) if(NOT Sqlpp11SQLite3_FOUND)
# message(FATAL_ERROR "Sqlpp11SQLite3 not found!") endif()

find_package(Sodium REQUIRED)

file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR}/src/*.cpp
     ${CMAKE_SOURCE_DIR}/test/*.hpp)

file(GLOB_RECURSE INCLUDES ${CMAKE_SOURCE_DIR}/include/*.h)

add_executable(${CMAKE_PROJECT_NAME} main.cpp ${SOURCES})

include_directories(/usr/local/include)

target_link_libraries(
  ${PROJECT_NAME}
  PRIVATE # ${LEVELDB_LIBRARIES}/libleveldb.dylib ${LEVELDB_LIBRARIES} leveldb
          # ${INCLUDES}
          fmt::fmt ${sodium_LIBRARY_DEBUG} # 手动找到的库路径
          # sqlpp11::sqlpp11
)

target_include_directories(
  ${PROJECT_NAME}
  PRIVATE ${CMAKE_SOURCE_DIR}/include ${sodium_INCLUDE_DIR} # sodium.h 头文件路径
          sqlpp11::sqlpp11)

target_compile_options(
  ${PROJECT_NAME}
  PRIVATE -O0
          -Wall # 打开所有警告
          # -Wextra      # 打开额外的警告
          -Werror # 将警告视为错误
          -pedantic # 启用严格的 C++ 标准
)
