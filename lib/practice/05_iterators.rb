#!/usr/bin/env ruby
# Practice Script 5: Array Iterators

puts "=" * 50
puts "RUBY PRACTICE 5: Array Iterators"
puts "=" * 50

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
fruits = ["apple", "banana", "cherry", "date", "elderberry"]

# .each - iterate through each element
puts "\n--- EACH ---"
puts "Original array: #{numbers}"
puts "Double each number:"
numbers.each do |num|
  puts "#{num} * 2 = #{num * 2}"
end

# .map / .collect - transform array
puts "\n--- MAP (TRANSFORM) ---"
puts "Original: #{numbers[0..5]}"
squared = numbers[0..5].map { |num| num ** 2 }
puts "Squared: #{squared}"

tripled = numbers[0..5].map do |num|
  num * 3
end
puts "Tripled: #{tripled}"

# .select / .filter - keep elements that match condition
puts "\n--- SELECT (FILTER) ---"
puts "Original: #{numbers}"
evens = numbers.select { |num| num.even? }
puts "Even numbers: #{evens}"

greater_than_five = numbers.select { |num| num > 5 }
puts "Greater than 5: #{greater_than_five}"

# .reject - remove elements that match condition
puts "\n--- REJECT ---"
puts "Original: #{numbers}"
not_divisible_by_3 = numbers.reject { |num| num % 3 == 0 }
puts "Not divisible by 3: #{not_divisible_by_3}"

# .find / .detect - find first matching element
puts "\n--- FIND/DETECT ---"
puts "Original: #{numbers}"
first_even = numbers.find { |num| num.even? }
puts "First even number: #{first_even}"

first_greater_than_7 = numbers.find { |num| num > 7 }
puts "First number > 7: #{first_greater_than_7}"

# .count - count matching elements
puts "\n--- COUNT ---"
puts "Original: #{numbers}"
even_count = numbers.count { |num| num.even? }
puts "Count of even numbers: #{even_count}"

# .any? - check if any element matches
puts "\n--- ANY? ---"
puts "Original: #{numbers}"
has_even = numbers.any? { |num| num.even? }
puts "Has any even numbers? #{has_even}"

has_negative = numbers.any? { |num| num < 0 }
puts "Has any negative numbers? #{has_negative}"

# .all? - check if all elements match
puts "\n--- ALL? ---"
puts "Original: #{numbers}"
all_positive = numbers.all? { |num| num > 0 }
puts "All positive? #{all_positive}"

all_even = numbers.all? { |num| num.even? }
puts "All even? #{all_even}"

# .none? - check if no elements match
puts "\n--- NONE? ---"
puts "Original: #{numbers}"
none_negative = numbers.none? { |num| num < 0 }
puts "None negative? #{none_negative}"

# .reduce / .inject - accumulate value
puts "\n--- REDUCE/INJECT ---"
puts "Original: #{numbers[0..5]}"
sum = numbers[0..5].reduce(0) { |total, num| total + num }
puts "Sum: #{sum}"

product = numbers[0..5].reduce(1) { |total, num| total * num }
puts "Product: #{product}"

# Shorthand for sum
sum_shorthand = numbers[0..5].sum
puts "Sum (using .sum): #{sum_shorthand}"

# .each_with_index - iterate with index
puts "\n--- EACH_WITH_INDEX ---"
puts "Fruits with index:"
fruits.each_with_index do |fruit, index|
  puts "#{index}: #{fruit}"
end

# .zip - combine arrays
puts "\n--- ZIP ---"
names = ["Alice", "Bob", "Charlie"]
ages = [25, 30, 35]
combined = names.zip(ages)
puts "Combined: #{combined.inspect}"

# .partition - split into two groups
puts "\n--- PARTITION ---"
puts "Original: #{numbers}"
evens, odds = numbers.partition { |num| num.even? }
puts "Evens: #{evens}"
puts "Odds: #{odds}"

# .group_by - group by criteria
puts "\n--- GROUP_BY ---"
grouped = numbers.group_by { |num| num % 3 }
puts "Grouped by remainder when divided by 3:"
grouped.each do |remainder, nums|
  puts "  Remainder #{remainder}: #{nums}"
end

# Method chaining
puts "\n--- METHOD CHAINING ---"
puts "Original: #{numbers}"
result = numbers
  .select { |n| n.even? }
  .map { |n| n * 2 }
  .reject { |n| n > 10 }
puts "Even, doubled, <= 10: #{result}"
