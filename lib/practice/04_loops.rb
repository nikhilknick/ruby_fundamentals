#!/usr/bin/env ruby
# Practice Script 4: Loops

puts "=" * 50
puts "RUBY PRACTICE 4: Loops"
puts "=" * 50

# times loop
puts "\n--- TIMES LOOP ---"
puts "Print 'Hello' 5 times:"
5.times do |i|
  puts "#{i + 1}. Hello!"
end

# upto loop
puts "\n--- UPTO LOOP ---"
puts "Count from 1 to 5:"
1.upto(5) do |num|
  puts "Number: #{num}"
end

# downto loop
puts "\n--- DOWNTO LOOP ---"
puts "Countdown from 5 to 1:"
5.downto(1) do |num|
  puts "#{num}..."
end
puts "Blast off!"

# while loop
puts "\n--- WHILE LOOP ---"
puts "Print while counter < 5:"
counter = 0
while counter < 5
  puts "Counter: #{counter}"
  counter += 1
end

# until loop (opposite of while)
puts "\n--- UNTIL LOOP ---"
puts "Print until counter >= 5:"
counter = 0
until counter >= 5
  puts "Counter: #{counter}"
  counter += 1
end

# for loop with range
puts "\n--- FOR LOOP ---"
puts "For loop from 1 to 5:"
for i in 1..5
  puts "i = #{i}"
end

# loop with break
puts "\n--- LOOP WITH BREAK ---"
puts "Infinite loop with break condition:"
counter = 0
loop do
  puts "Counter: #{counter}"
  counter += 1
  break if counter >= 5
end

# next (skip to next iteration)
puts "\n--- NEXT (SKIP) ---"
puts "Print only even numbers from 1 to 10:"
1.upto(10) do |num|
  next if num.odd?
  puts "Even number: #{num}"
end

# redo (restart current iteration)
puts "\n--- REDO EXAMPLE ---"
puts "Example with redo (user input simulation):"
attempts = 0
5.times do |i|
  attempts += 1
  if attempts < 3
    puts "Attempt #{attempts}: Processing..."
    redo if attempts == 1  # Redo first attempt
  end
  break if attempts >= 3
end

# Nested loops
puts "\n--- NESTED LOOPS ---"
puts "Multiplication table (1-3):"
(1..3).each do |i|
  (1..3).each do |j|
    print "#{i}x#{j}=#{i*j}\t"
  end
  puts
end

# step method
puts "\n--- STEP METHOD ---"
puts "Count from 0 to 10 by 2s:"
0.step(10, 2) do |num|
  puts "Number: #{num}"
end
