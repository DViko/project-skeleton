#include <iostream>
#include <project/Calculator.hpp>

int main()
{
    Calculator calc;

    int value_a{10}, value_b{20};

    std::cout << "Result is: " << calc.addition(value_a, value_b) << std::endl;

    return EXIT_SUCCESS;
}