# Lua Nested Table Iteration Order Issue

This repository demonstrates a potential issue with Lua's `pairs` iterator when dealing with nested tables.  The order of iteration is not guaranteed, which can lead to unexpected behavior, especially in recursive functions.

The `bug.lua` file contains a simple recursive function `foo` that iterates through a nested table.  The output might vary depending on the Lua interpreter implementation. 

The `bugSolution.lua` file presents a solution using a different approach that offers more predictable results. 

## How to reproduce the bug:
1. Save `bug.lua`.
2. Run the script using a Lua interpreter (e.g., `lua bug.lua`).
3. Observe the inconsistent order of output.

## Solution:
The solution file, `bugSolution.lua`, provides a way to iterate over tables with a predictable order. Although not always applicable, using sorted pairs helps provide a stable approach. 