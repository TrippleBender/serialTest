cmake_minimum_required (VERSION 2.6)
project (serialTest)
##add_executable(serialStreamWrite src/serialStreamWrite.cpp)
add_executable(serialTestRead src/serialTestRead.cpp)
add_executable(serialTestWrite src/serialTestWrite.cpp)
add_executable(serialWriteRead src/serialWriteRead.cpp)
add_executable(serialTiltScanner src/serialTilstScanner.cpp)
add_executable(NeuerVersuch src/NeuerVersuch.cpp)


##add_dependencies(serialTest ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries (serialTestRead  serial pthread)
target_link_libraries (serialTestWrite  serial pthread)
target_link_libraries (serialWriteRead  serial pthread)
target_link_libraries (serialTiltScanner  serial pthread)
target_link_libraries (NeuerVersuch  serial pthread)

SET(CMAKE_CXX_FLAGS "-std=c++0x")