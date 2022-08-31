cmake_minimum_required(VERSION 2.8.12)

project(thirdparty)

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_INSTALL_LIBDIR lib)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(ENABLE_SPVREMAPPER OFF)
set(ENABLE_GLSLANG_BINARIES OFF)
set(SHADERC_SKIP_TESTS ON)
set(SPIRV_SKIP_EXECUTABLES ON)
set(SPIRV_WERROR OFF)
set(SHADERC_ENABLE_SHARED_CRT ON)

add_subdirectory(spirv-headers)
add_subdirectory(spirv-tools)
add_subdirectory(glslang)
add_subdirectory(shaderc)
