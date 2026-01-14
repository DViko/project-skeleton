
add_library(project_lib

    Calculator.cpp
)

target_include_directories(project_lib PUBLIC

    ${PROJECT_SOURCE_DIR}/include
    ${PROJECT_SOURCE_DIR}/src
)

target_link_libraries(project_lib INTERFACE compiler_warnings)

add_executable(exec

    main.cpp
)

target_link_libraries(exec PRIVATE

    project_lib
)