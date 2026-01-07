#!/usr/bin/env ruby
# Practice Script 6: Methods

puts "=" * 50
puts "RUBY PRACTICE 6: Methods"
puts "=" * 50

# Simple method
def greet
  puts "Hello, World!"
end

puts "\n--- SIMPLE METHOD ---"
greet

# Method with parameters
def greet_person(name)
  puts "Hello, #{name}!"
end

puts "\n--- METHOD WITH PARAMETERS ---"
greet_person("Alice")
greet_person("Bob")

# Method with multiple parameters
def introduce(name, age, city)
  puts "My name is #{name}, I'm #{age} years old, and I live in #{city}."
end

puts "\n--- MULTIPLE PARAMETERS ---"
introduce("Charlie", 30, "New York")

# Method with default parameters
def greet_with_time(name, time_of_day = "day")
  puts "Good #{time_of_day}, #{name}!"
end

puts "\n--- DEFAULT PARAMETERS ---"
greet_with_time("Alice")
greet_with_time("Bob", "morning")
greet_with_time("Charlie", "evening")

# Method with return value
def add(a, b)
  a + b  # Implicit return (last expression)
end

def subtract(a, b)
  return a - b  # Explicit return
end

puts "\n--- RETURN VALUES ---"
sum = add(5, 3)
puts "5 + 3 = #{sum}"

difference = subtract(10, 4)
puts "10 - 4 = #{difference}"

# Method with multiple return values
def min_max(array)
  [array.min, array.max]
end

puts "\n--- MULTIPLE RETURN VALUES ---"
numbers = [3, 7, 1, 9, 4]
minimum, maximum = min_max(numbers)
puts "Array: #{numbers}"
puts "Min: #{minimum}, Max: #{maximum}"

# Method with keyword arguments
def create_user(name:, email:, age: 18, country: "USA")
  {
    name: name,
    email: email,
    age: age,
    country: country
  }
end

puts "\n--- KEYWORD ARGUMENTS ---"
user1 = create_user(name: "Alice", email: "alice@example.com")
puts "User 1: #{user1}"

user2 = create_user(name: "Bob", email: "bob@example.com", age: 25, country: "Canada")
puts "User 2: #{user2}"

# Method with splat operator (*args)
def sum_all(*numbers)
  numbers.sum
end

puts "\n--- SPLAT OPERATOR (*args) ---"
puts "sum_all(1, 2, 3) = #{sum_all(1, 2, 3)}"
puts "sum_all(1, 2, 3, 4, 5) = #{sum_all(1, 2, 3, 4, 5)}"

# Method with double splat operator (**kwargs)
def print_options(**options)
  options.each do |key, value|
    puts "  #{key}: #{value}"
  end
end

puts "\n--- DOUBLE SPLAT OPERATOR (**kwargs) ---"
puts "Options:"
print_options(color: "red", size: "large", quantity: 5)

# Method that takes a block
def repeat(times)
  times.times do
    yield
  end
end

puts "\n--- METHOD WITH BLOCK (yield) ---"
print "Repeat 3 times: "
repeat(3) { print "Hello! " }
puts

# Method with block and parameters
def repeat_with_number(times)
  times.times do |i|
    yield(i + 1)
  end
end

puts "\n--- METHOD WITH BLOCK PARAMETERS ---"
repeat_with_number(3) do |num|
  puts "Iteration #{num}"
end

# Method that checks if block is given
def optional_block
  if block_given?
    yield
  else
    puts "No block provided"
  end
end

puts "\n--- OPTIONAL BLOCK ---"
optional_block
optional_block { puts "Block provided!" }

# Method with proc/lambda
def execute_operation(a, b, operation)
  operation.call(a, b)
end

puts "\n--- METHOD WITH PROC/LAMBDA ---"
add_proc = proc { |x, y| x + y }
multiply_lambda = ->(x, y) { x * y }

puts "5 + 3 = #{execute_operation(5, 3, add_proc)}"
puts "5 * 3 = #{execute_operation(5, 3, multiply_lambda)}"

# Recursive method
def factorial(n)
  return 1 if n <= 1
  n * factorial(n - 1)
end

puts "\n--- RECURSIVE METHOD ---"
puts "Factorial of 5: #{factorial(5)}"
puts "5! = 5 × 4 × 3 × 2 × 1 = #{factorial(5)}"

# Method with guard clause
def process_user(user)
  return "No user provided" if user.nil?
  return "Invalid user" if user[:name].nil? || user[:name].empty?

  "Processing user: #{user[:name]}"
end

puts "\n--- GUARD CLAUSES ---"
puts process_user(nil)
puts process_user({ name: "" })
puts process_user({ name: "Alice" })
