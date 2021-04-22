cmake_minimum_required(VERSION 3.10)

project(pipewire.clawed)
set(LIBRARY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/pipewire)
set(TARGET pipewire.clawed)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(TARGET_TRIPLE x86_64-pc-linux-gnu)
add_compile_options(-O2 -mavx)


#
# MAIN
#
set(ADAPTER "adapter.${TARGET_TRIPLE}.c")
add_library(${TARGET} SHARED ${ADAPTER})

target_include_directories(${TARGET}
  PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../"
  PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/"
  PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../include/"
  PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../include/${TARGET_TRIPLE}/"
  PRIVATE "${LIBRARY_DIR}/src/"
  PRIVATE "${LIBRARY_DIR}/spa/include/")

# when using build procedure as is from
# https://gitlab.freedesktop.org/pipewire/pipewire/-/blob/0.3.25/INSTALL.md#building
target_link_directories(${TARGET}
  PRIVATE ${LIBRARY_DIR}/builddir/src/pipewire/)

target_link_libraries(${TARGET} PRIVATE pipewire-0.3)
