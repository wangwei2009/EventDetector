cmake_minimum_required(VERSION 2.8)

project(EventDetector)

set(EXECUTABLE_OUTPUT_PATH "${PROJECT_SOURCE_DIR}/bin")
add_executable(${PROJECT_NAME} 
   "main.cpp"
    feature_aggregator.cpp
    feature_normalizer.cpp
    fft_window.cpp
    mel_basis.cpp
    weights.cpp
    model.cpp
    postprocessing.cpp
    wavread.cpp
    preprocessing.cpp
    TestLocalFile.cpp
    EventDetector.cpp
    File.cpp
)

# where to find header files
include_directories("${PROJECT_SOURCE_DIR}/include")

include_directories(../alsautils/)
include_directories(../eigen/)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
target_link_libraries(${PROJECT_NAME} m pthread asound)

#SET(CMAKE_ALLOW_LOOSE_LOOP_CONSTRUCTS ON)
IF (CMAKE_SYSTEM_NAME MATCHES "Windows")
    MESSAGE(STATUS "current platform: Windows")
ELSEIF (CMAKE_SYSTEM_NAME MATCHES "Linux")
    MESSAGE(STATUS "current platform: Linux ") 
ELSEIF(CMAKE_SYSTEM_NAME MATCHES "FreeBSD")
    MESSAGE(STATUS "current platform: FreeBSD")
ENDIF (WIN32)

