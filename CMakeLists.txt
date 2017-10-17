project(PiCrossCompile)
cmake_minimum_required(VERSION 3.0)

set(TARGET_NAME "hello_pi")
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

set(CMAKE_C_COMPILER "/opt/pi-toolchain/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-gcc")
set(CMAKE_CXX_COMPILER "/opt/pi-toolchain/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-g++")

set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g -std=c++11")
set(CMAKE_CXX_FLAGS_RELEASE "-W -Wall -O3 -std=c++11")

file(GLOB SRCS src/*.cpp)
add_executable(${TARGET_NAME} ${SRCS})
