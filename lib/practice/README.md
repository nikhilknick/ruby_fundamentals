# Ruby Practice Scripts

This directory contains 10 comprehensive Ruby practice scripts covering all the fundamentals.

## How to Run

From the Rails root directory:

```bash
# Run individual scripts
ruby lib/practice/01_variables_and_types.rb
ruby lib/practice/02_operators.rb
# ... etc

# Or run all scripts at once
for file in lib/practice/*.rb; do ruby "$file"; done
```

## Scripts Overview

### 1. Variables and Data Types (`01_variables_and_types.rb`)
- Strings, Integers, Floats, Symbols
- Booleans, Arrays, Hashes
- Type checking

### 2. Operators (`02_operators.rb`)
- Arithmetic operators (+, -, *, /, %, **)
- Comparison operators (==, !=, <, >, <=, >=)
- Logical operators (&&, ||, !)
- Assignment operators (+=, -=, *=, /=)
- Range operators (.., ...)
- Ternary operator
- Spaceship operator (<=>)

### 3. Control Flow (`03_control_flow.rb`)
- if/elsif/else statements
- unless statements
- case/when statements
- case with ranges
- Modifier if/unless
- Ternary operator
- Nested conditions

### 4. Loops (`04_loops.rb`)
- times loop
- upto/downto loops
- while/until loops
- for loops
- loop with break
- next (skip iteration)
- redo (restart iteration)
- Nested loops
- step method

### 5. Iterators (`05_iterators.rb`)
- .each - iterate through elements
- .map - transform array
- .select - filter (keep matching)
- .reject - filter (remove matching)
- .find - find first match
- .count - count matching elements
- .any? / .all? / .none? - check conditions
- .reduce/.inject - accumulate values
- .each_with_index
- .zip, .partition, .group_by
- Method chaining

### 6. Methods (`06_methods.rb`)
- Simple methods
- Parameters (required, default, keyword)
- Return values
- Multiple return values
- Splat operator (*args)
- Double splat (**kwargs)
- Blocks and yield
- Procs and lambdas
- Recursive methods
- Guard clauses

### 7. String Manipulation (`07_strings.rb`)
- String creation methods
- String interpolation
- Concatenation
- Case methods (upcase, downcase, capitalize)
- Manipulation (strip, reverse, length)
- Replacement (gsub, sub, delete, tr)
- Split and join
- Checking (include?, start_with?, end_with?)
- Extraction and slicing
- Regular expressions
- Formatting

### 8. Arrays (`08_arrays.rb`)
- Array creation
- Accessing elements
- Adding elements (push, <<, unshift, insert)
- Removing elements (pop, shift, delete, delete_at)
- Array operations (+, -, |, &)
- Sorting
- Querying (length, count, empty?, include?)
- Transforming (map, reverse, compact, uniq, flatten)
- Iteration methods
- Filtering (select, reject, find)
- Reduce/inject
- Joining
- Checking conditions
- Slicing
- Multidimensional arrays

### 9. Hashes (`09_hashes.rb`)
- Hash creation (multiple syntaxes)
- Accessing elements
- Adding and updating
- Removing elements
- Hash methods (keys, values, size, has_key?, has_value?)
- Merging hashes
- Iteration (each, each_key, each_value)
- Transforming (transform_values, transform_keys)
- Selecting and rejecting
- Conversions (to_a, invert)
- Nested hashes
- dig method (safe navigation)
- Default values
- Compact, slice, except
- Method chaining

### 10. Combined Practice (`10_combined_practice.rb`)
Real-world mini projects:
- Grade calculator
- Word frequency counter
- To-do list manager
- Number statistics calculator
- Contact book
- Fibonacci sequence generator
- Text analyzer
- Shopping cart calculator
- Prime number finder
- Data transformation exercises

## Interactive Web Examples

Visit **http://localhost:3000/test** in your browser to see all these concepts with live, interactive examples!

## Tips for Practice

1. **Run each script multiple times** - Modify values and see how output changes
2. **Break things** - Change code intentionally to see error messages
3. **Add your own examples** - Practice by adding new code sections
4. **Combine concepts** - Try using multiple concepts together
5. **Experiment** - Ruby is forgiving, try different approaches!

## Next Steps

After mastering these basics:
1. Practice with Rails models (ActiveRecord)
2. Learn about classes and object-oriented programming
3. Explore Ruby gems and libraries
4. Build small CLI applications
5. Work on Rails controllers and views with these concepts

## Quick Reference

```ruby
# Variables
name = "Alice"              # String
age = 25                    # Integer
height = 5.9                # Float
status = :active            # Symbol
items = [1, 2, 3]           # Array
person = { name: "Bob" }    # Hash

# Control Flow
if condition
  # code
elsif other_condition
  # code
else
  # code
end

# Loops
5.times { |i| puts i }
[1,2,3].each { |n| puts n }

# Methods
def greet(name)
  "Hello, #{name}"
end

# Iterators
[1,2,3].map { |n| n * 2 }     # Transform
[1,2,3].select { |n| n > 1 }   # Filter
[1,2,3].reduce(:+)             # Sum
```

Happy coding!
