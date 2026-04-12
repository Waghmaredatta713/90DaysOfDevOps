#!/bin/bash

# Function: greet
greet() {
    echo "Hello, $1!"
}

# Function: add
add() {
    sum=$(($1 + $2))
    echo "Sum is: $sum"
}

# Call functions
greet "Datta"
add 10 20
