#!/bin/bash

# Function to perform addition
add() {
    echo "$1 + $2" | bc
}

# Function to perform subtraction
subtract() {
    echo "$1 - $2" | bc
}

# Function to perform multiplication
multiply() {
    echo "$1 * $2" | bc
}

# Function to perform division
divide() {
    echo "scale=2; $1 / $2" | bc
}

# Main calculator loop
while true; do
    echo "Bash Calculator"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Quit"

    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$(add $num1 $num2)
            echo "Result: $result"
            ;;
        2)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$(subtract $num1 $num2)
            echo "Result: $result"
            ;;
        3)
            read -p "Enter first number: " num1
            read -p "Enter second number: " num2
            result=$(multiply $num1 $num2)
            echo "Result: $result"
            ;;
        4)
            read -p "Enter numerator: " num1
            read -p "Enter denominator: " num2
            result=$(divide $num1 $num2)
            echo "Result: $result"
            ;;
        5)
            echo "Exiting the calculator. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac

    echo "---------------------"
done

