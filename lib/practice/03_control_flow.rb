#!/usr/bin/env ruby
# Practice Script 3: Control Flow

puts "=" * 50
puts "RUBY PRACTICE 3: Control Flow"
puts "=" * 50

# if/elsif/else
puts "\n--- IF/ELSIF/ELSE ---"
temperature = 75

if temperature > 80
  puts "It's hot! Temperature: #{temperature}°F"
elsif temperature > 60
  puts "It's pleasant! Temperature: #{temperature}°F"
elsif temperature > 40
  puts "It's cool! Temperature: #{temperature}°F"
else
  puts "It's cold! Temperature: #{temperature}°F"
end

# unless (opposite of if)
puts "\n--- UNLESS ---"
is_raining = false

unless is_raining
  puts "Let's go outside! It's not raining."
end

if !is_raining
  puts "This is equivalent to the unless above"
end

# case/when
puts "\n--- CASE/WHEN ---"
grade = 'B'

result = case grade
when 'A'
  "Excellent!"
when 'B'
  "Good job!"
when 'C'
  "Average"
when 'D'
  "Needs improvement"
when 'F'
  "Failed"
else
  "Invalid grade"
end

puts "Grade #{grade}: #{result}"

# case with ranges
puts "\n--- CASE WITH RANGES ---"
score = 85

performance = case score
when 90..100
  "Outstanding"
when 80..89
  "Great"
when 70..79
  "Good"
when 60..69
  "Satisfactory"
else
  "Needs improvement"
end

puts "Score #{score}: #{performance}"

# Modifier if/unless (one-line syntax)
puts "\n--- MODIFIER IF/UNLESS ---"
age = 21
puts "You can vote!" if age >= 18
puts "You can drink alcohol!" if age >= 21

password = "secret"
puts "Access denied!" unless password == "secret123"

# Combining conditions
puts "\n--- COMBINING CONDITIONS ---"
username = "admin"
password = "password123"
is_logged_in = false

if username == "admin" && password == "password123"
  puts "Login successful!"
  is_logged_in = true
elsif username == "admin"
  puts "Incorrect password!"
else
  puts "User not found!"
end

# Ternary operator
puts "\n--- TERNARY OPERATOR ---"
hour = 14
greeting = hour < 12 ? "Good morning!" : "Good afternoon!"
puts greeting

# Nested conditions
puts "\n--- NESTED CONDITIONS ---"
has_ticket = true
has_id = true

if has_ticket
  if has_id
    puts "Welcome to the concert!"
  else
    puts "You need an ID to enter."
  end
else
  puts "You need a ticket!"
end

# Multiple conditions with &&
puts "\n--- MULTIPLE CONDITIONS ---"
if has_ticket && has_id
  puts "Entry granted! (using && operator)"
end
