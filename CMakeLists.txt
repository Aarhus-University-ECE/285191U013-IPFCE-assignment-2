cmake_minimum_required(VERSION 3.16)
project(assignment-2 LANGUAGES C CXX)

set(CMAKE_C_STANDARD 17)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS OFF)

add_compile_options(-Wall -Wextra)

add_executable(exercise-2 src/exercise-2.c)
add_executable(exercise-3 src/exercise-3.c)
add_executable(exercise-4 src/exercise-4.c)
add_executable(exercise-5 src/exercise-5.c)
add_executable(exercise-7 src/exercise-7.c)

add_executable(playground src/playground.c)
