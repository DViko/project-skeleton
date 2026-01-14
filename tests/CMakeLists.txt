
add_executable(test_calculator_addition

    test_calculator_addition.cpp
)

target_link_libraries(test_calculator_addition PRIVATE

    project_lib
    compiler_warnings
)

add_test(NAME

    test_calculator_addition
    COMMAND test_calculator_addition
)

