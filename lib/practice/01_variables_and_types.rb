#!/usr/bin/env ruby
# Practice Script 1: Variables and Data Types

puts "=" * 50
puts "RUBY PRACTICE 1: Variables and Data Types"
puts "=" * 50

# Strings
first_name = "John"
last_name = "Doe"
full_name = "#{first_name} #{last_name}"

puts "\n--- STRINGS ---"
puts "First name: #{first_name}"
puts "Last name: #{last_name}"
puts "Full name: #{full_name}"
puts "Name length: #{full_name.length}"

# Integers
age = 25
birth_year = 2024 - age

puts "\n--- INTEGERS ---"
puts "Age: #{age}"
puts "Birth year: #{birth_year}"
puts "Age next year: #{age + 1}"

# Floats
height = 5.9
weight = 165.5
bmi = weight / (height ** 2)

puts "\n--- FLOATS ---"
puts "Height: #{height} feet"
puts "Weight: #{weight} lbs"
puts "BMI: #{bmi.round(2)}"

# Symbols
status = :active
role = :admin

puts "\n--- SYMBOLS ---"
puts "Status: #{status}"
puts "Role: #{role}"
puts "Symbols are immutable and memory efficient!"

# Booleans
is_student = true
is_employed = false

puts "\n--- BOOLEANS ---"
puts "Is student? #{is_student}"
puts "Is employed? #{is_employed}"

# Arrays
numbers = [1, 2, 3, 4, 5]
mixed = ["text", 42, 3.14, :symbol, true]

puts "\n--- ARRAYS ---"
puts "Numbers: #{numbers}"
puts "Mixed types: #{mixed}"
puts "First element: #{numbers[0]}"
puts "Last element: #{numbers[-1]}"

# Hashes
person = {
  name: "Alice",
  age: 30,
  city: "New York",
  hobbies: ["reading", "coding", "hiking"]
}

puts "\n--- HASHES ---"
puts "Person: #{person}"
puts "Name: #{person[:name]}"
puts "Age: #{person[:age]}"
puts "Hobbies: #{person[:hobbies].join(', ')}"

# Type checking
puts "\n--- TYPE CHECKING ---"
puts "first_name is a #{first_name.class}"
puts "age is an #{age.class}"
puts "height is a #{height.class}"
puts "status is a #{status.class}"
puts "numbers is an #{numbers.class}"
puts "person is a #{person.class}"
