#include <cassert>
#include <iostream>
#include <project/Calculator.hpp>

int main()
{
    std::cout << "Running test_calculator_addition...\n";

    Calculator calc;

    assert(calc.addition(2, 2) == 4);
    assert(calc.addition(-1, 1) == 0);

    // This assertion is intentionally incorrect for testing purposes

    assert(calc.addition(0, 0) == 1);

    std::cout << "All tests passed!\n";
    return EXIT_SUCCESS;
}