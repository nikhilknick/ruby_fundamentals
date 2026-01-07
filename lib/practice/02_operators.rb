#!/usr/bin/env ruby
# Practice Script 2: Operators and Expressions

puts "=" * 50
puts "RUBY PRACTICE 2: Operators"
puts "=" * 50

# Arithmetic Operators
a = 20
b = 7

puts "\n--- ARITHMETIC OPERATORS ---"
puts "a = #{a}, b = #{b}"
puts "Addition: #{a} + #{b} = #{a + b}"
puts "Subtraction: #{a} - #{b} = #{a - b}"
puts "Multiplication: #{a} * #{b} = #{a * b}"
puts "Division: #{a} / #{b} = #{a / b}"
puts "Modulo (remainder): #{a} % #{b} = #{a % b}"
puts "Exponent: #{a} ** 2 = #{a ** 2}"

# Comparison Operators
x = 10
y = 20

puts "\n--- COMPARISON OPERATORS ---"
puts "x = #{x}, y = #{y}"
puts "x == y: #{x == y}"
puts "x != y: #{x != y}"
puts "x > y: #{x > y}"
puts "x < y: #{x < y}"
puts "x >= y: #{x >= y}"
puts "x <= y: #{x <= y}"

# Logical Operators
is_sunny = true
is_warm = true
is_raining = false

puts "\n--- LOGICAL OPERATORS ---"
puts "is_sunny = #{is_sunny}, is_warm = #{is_warm}, is_raining = #{is_raining}"
puts "is_sunny && is_warm: #{is_sunny && is_warm}"
puts "is_sunny && is_raining: #{is_sunny && is_raining}"
puts "is_sunny || is_raining: #{is_sunny || is_raining}"
puts "!is_raining: #{!is_raining}"

# Assignment Operators
counter = 10
puts "\n--- ASSIGNMENT OPERATORS ---"
puts "Initial counter: #{counter}"

counter += 5
puts "After counter += 5: #{counter}"

counter -= 3
puts "After counter -= 3: #{counter}"

counter *= 2
puts "After counter *= 2: #{counter}"

counter /= 4
puts "After counter /= 4: #{counter}"

# String Operators
greeting = "Hello"
name = "World"

puts "\n--- STRING OPERATORS ---"
puts "greeting + ' ' + name: #{greeting + ' ' + name}"
puts "greeting << ' ' << name: #{greeting.dup << ' ' << name}"
puts "'Ha' * 3: #{'Ha' * 3}"

# Range Operators
puts "\n--- RANGE OPERATORS ---"
inclusive_range = (1..5)
exclusive_range = (1...5)

puts "Inclusive range (1..5): #{inclusive_range.to_a}"
puts "Exclusive range (1...5): #{exclusive_range.to_a}"

# Ternary Operator
age = 18
can_vote = age >= 18 ? "Yes" : "No"

puts "\n--- TERNARY OPERATOR ---"
puts "Age: #{age}"
puts "Can vote? #{can_vote}"

# Spaceship Operator <=>
puts "\n--- SPACESHIP OPERATOR <=> ---"
puts "5 <=> 3: #{5 <=> 3}    # Returns 1 (greater)"
puts "3 <=> 5: #{3 <=> 5}    # Returns -1 (less)"
puts "5 <=> 5: #{5 <=> 5}    # Returns 0 (equal)"
