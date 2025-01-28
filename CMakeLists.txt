cmake_minimum_required(VERSION 3.10)

project(
  Hermes
  VERSION 1.0
  DESCRIPTION "provide a api service for Essearch"
  LANGUAGES CXX)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(CMAKE_C_COMPILER /usr/bin/gcc)
set(CMAKE_CXX_COMPILE /usr/bin/g++)
set(CMAKE_SUPPRESS_REGENERATION FALSE)
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/CMake")
set(CMAKE_PREFIX_PATH "/usr/local/lib/cmake/Sqlpp11")

find_package(fmt REQUIRED)
find_package(spdlog REQUIRED)
find_package(Sodium REQUIRED)
find_package(Sqlpp11 REQUIRED CONFIG)

find_package(Sqlpp11SQLite3 REQUIRED CONFIG)
if(NOT Sqlpp11SQLite3_FOUND)
  message(FATAL_ERROR "Sqlpp11SQLite3 not found!")
endif()

# # 查找 SQLite3 库 include_directories(/usr/local/include)
find_package(SQLite3 REQUIRED)
# 打印找到的 SQLite3 信息（有助于调试）
message(STATUS "SQLite3 include dirs: ${SQLite3_INCLUDE_DIRS}")
message(STATUS "SQLite3 libraries: ${SQLite3_LIBRARIES}")

# 分别处理 macos 和 archlinux
if(APPLE)
  # 手动设置 macOS SQLite3 安装路径（例如通过 Homebrew） 这个有用
  include_directories("/opt/homebrew/Cellar/sqlite/3.48.0/include")
  link_directories("/opt/homebrew/Cellar/sqlite/3.48.0/lib")
  # 手动设置 macOS spdlog 安装路径
  include_directories("/opt/homebrew/Cellar/spdlog/1.15.0_1/include")
  link_directories("/opt/homebrew/Cellar/spdlog/1.15.0_1/lib")

elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")
  # 手动设置 Arch Linux 路径（例如通过系统安装） include_directories("/usr/include/sqlite3")
  # link_directories("/usr/lib")
endif()

file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR}/src/*.cpp
     ${CMAKE_SOURCE_DIR}/test/*.hpp ${CMAKE_SOURCE_DIR}/include/*.hpp)
file(GLOB_RECURSE INCLUDES ${CMAKE_SOURCE_DIR}/include/*.h)

add_executable(${CMAKE_PROJECT_NAME} main.cpp ${SOURCES})

target_link_libraries(
  ${PROJECT_NAME}
  PRIVATE # ${LEVELDB_LIBRARIES}/libleveldb.dylib ${LEVELDB_LIBRARIES} leveldb
          # ${INCLUDES}
          ${SQLite3_LIBRARIES} fmt::fmt ${sodium_LIBRARY_DEBUG} # 手动找到的库路径
          sqlpp11::sqlpp11 sqlpp11::sqlite3 spdlog::spdlog)

target_include_directories(
  ${PROJECT_NAME}
  PRIVATE ${CMAKE_SOURCE_DIR}/include ${sodium_INCLUDE_DIR} # sodium.h 头文件路径
          sqlpp11::sqlite3 sqlpp11::sqlpp11)

target_compile_options(
  ${PROJECT_NAME}
  PRIVATE -O0 -Wall # 打开所有警告
          # -Wextra      # 打开额外的警告 -Werror # 将警告视为错误
          -pedantic # 启用严格的 C++ 标准
)

# include_directories(${SQLite3_INCLUDE_DIRS})
# target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE ${SQLite3_LIBRARIES})
# add_definitions(-DSQLPP11_PREPARED_STATEMENT_SIMPLE)
