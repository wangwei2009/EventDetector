cmake_minimum_required(VERSION 2.8)

project(EventDetector)

# where to find header files
include_directories("${PROJECT_SOURCE_DIR}/include")
include_directories(../eigen/)

set(CMAKE_BUILD_TYPE "Release")

set(EXECUTABLE_OUTPUT_PATH "${PROJECT_SOURCE_DIR}/bin")

set(SRC
    src/feature_aggregator.cpp
    src/feature_normalizer.cpp
    src/fft_window.cpp
    src/mel_basis.cpp
    src/weights.cpp
    src/model.cpp
    src/postprocessing.cpp
    src/wavread.cpp
    src/preprocessing.cpp
    src/TestLocalFile.cpp
    src/EventDetector.cpp
    src/File.cpp
    )
add_library(libEventDetector STATIC
        ${SRC}
)

add_executable(${PROJECT_NAME}
    src/main.cpp
)

target_link_libraries(${PROJECT_NAME}
    m
    pthread
    asound
    libEventDetector)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")


#SET(CMAKE_ALLOW_LOOSE_LOOP_CONSTRUCTS ON)
IF (CMAKE_SYSTEM_NAME MATCHES "Windows")
    MESSAGE(STATUS "current platform: Windows")
ELSEIF (CMAKE_SYSTEM_NAME MATCHES "Linux")
    MESSAGE(STATUS "current platform: Linux ") 
ELSEIF(CMAKE_SYSTEM_NAME MATCHES "FreeBSD")
    MESSAGE(STATUS "current platform: FreeBSD")
ENDIF (WIN32)

