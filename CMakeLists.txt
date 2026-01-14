cmake_minimum_required(VERSION 3.23)
project(Project_Skeleton LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

option(ENABLE_TESTS "Enable unit tests" OFF)

add_library(compiler_warnings INTERFACE)
add_subdirectory(src)


if(ENABLE_TESTS)

    enable_testing()
    add_subdirectory(tests)
    
endif()


if(MSVC)

    target_compile_options(compiler_warnings INTERFACE
    
        /W4 /WX
    )

else()

    target_compile_options(compiler_warnings INTERFACE

        -Wall -Wextra -Wpedantic -Wshadow -Wconversion
        -Wsign-conversion -Wold-style-cast -Wcast-align
        -Wduplicated-cond -Wlogical-op -Werror
    )

endif()
