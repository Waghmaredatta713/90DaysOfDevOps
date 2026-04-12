#!/bin/bash

# Function using local variable
local_demo() {
    local name="Datta"
    echo "Inside function: $name"
}

# Function using global variable
global_demo() {
    name="DevOps"
}

local_demo
echo "Outside function: $name"

global_demo
echo "After global function: $name"
