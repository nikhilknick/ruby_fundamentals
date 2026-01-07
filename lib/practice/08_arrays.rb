#!/usr/bin/env ruby
# Practice Script 8: Working with Arrays

puts "=" * 50
puts "RUBY PRACTICE 8: Arrays"
puts "=" * 50

# Array creation
puts "\n--- ARRAY CREATION ---"
arr1 = [1, 2, 3, 4, 5]
arr2 = Array.new(3, 0)
arr3 = Array.new(3) { |i| i * 2 }
arr4 = %w[apple banana cherry]

puts "Literal: #{arr1}"
puts "Array.new(3, 0): #{arr2}"
puts "Array.new with block: #{arr3}"
puts "Word array %w: #{arr4}"

# Accessing elements
puts "\n--- ACCESSING ELEMENTS ---"
numbers = [10, 20, 30, 40, 50]
puts "Array: #{numbers}"
puts "numbers[0]: #{numbers[0]}"
puts "numbers[2]: #{numbers[2]}"
puts "numbers[-1] (last): #{numbers[-1]}"
puts "numbers[-2]: #{numbers[-2]}"
puts "numbers[1..3]: #{numbers[1..3]}"
puts "numbers[1...3]: #{numbers[1...3]}"
puts "first: #{numbers.first}"
puts "last: #{numbers.last}"
puts "take(3): #{numbers.take(3)}"

# Adding elements
puts "\n--- ADDING ELEMENTS ---"
arr = [1, 2, 3]
puts "Start: #{arr}"

arr.push(4)
puts "After push(4): #{arr}"

arr << 5
puts "After << 5: #{arr}"

arr.unshift(0)
puts "After unshift(0): #{arr}"

arr.insert(3, 2.5)
puts "After insert(3, 2.5): #{arr}"

# Removing elements
puts "\n--- REMOVING ELEMENTS ---"
arr = [1, 2, 3, 4, 5]
puts "Start: #{arr}"

popped = arr.pop
puts "After pop: #{arr}, returned: #{popped}"

shifted = arr.shift
puts "After shift: #{arr}, returned: #{shifted}"

arr = [1, 2, 3, 2, 4]
arr.delete(2)
puts "After delete(2): #{arr}"

arr = [1, 2, 3, 4, 5]
arr.delete_at(2)
puts "After delete_at(2): #{arr}"

# Array operations
puts "\n--- ARRAY OPERATIONS ---"
arr1 = [1, 2, 3]
arr2 = [3, 4, 5]

puts "arr1: #{arr1}"
puts "arr2: #{arr2}"
puts "Concatenation (+): #{arr1 + arr2}"
puts "Difference (-): #{arr1 - arr2}"
puts "Union (|): #{arr1 | arr2}"
puts "Intersection (&): #{arr1 & arr2}"

# Sorting
puts "\n--- SORTING ---"
numbers = [3, 1, 4, 1, 5, 9, 2, 6]
puts "Original: #{numbers}"
puts "sort: #{numbers.sort}"
puts "sort (desc): #{numbers.sort.reverse}"
puts "sort_by length: #{%w[apple pie cherry banana].sort_by(&:length)}"

# Array querying
puts "\n--- QUERYING ---"
numbers = [1, 2, 3, 4, 5]
puts "Array: #{numbers}"
puts "length/size: #{numbers.length}"
puts "count: #{numbers.count}"
puts "count { > 3 }: #{numbers.count { |n| n > 3 }}"
puts "empty?: #{numbers.empty?}"
puts "include?(3): #{numbers.include?(3)}"
puts "include?(10): #{numbers.include?(10)}"
puts "index(3): #{numbers.index(3)}"
puts "rindex(3): #{numbers.rindex(3)}"

# Transforming arrays
puts "\n--- TRANSFORMING ---"
numbers = [1, 2, 3, 4]
puts "Original: #{numbers}"
puts "map { * 2 }: #{numbers.map { |n| n * 2 }}"
puts "reverse: #{numbers.reverse}"
puts "compact: #{[1, nil, 2, nil, 3].compact}"
puts "uniq: #{[1, 2, 2, 3, 3, 3].uniq}"
puts "flatten: #{[[1, 2], [3, 4]].flatten}"

# Array iteration
puts "\n--- ITERATION ---"
fruits = ["apple", "banana", "cherry"]

print "each: "
fruits.each { |f| print "#{f} " }
puts

print "each_with_index: "
fruits.each_with_index { |f, i| print "#{i}:#{f} " }
puts

print "reverse_each: "
fruits.reverse_each { |f| print "#{f} " }
puts

# Filtering
puts "\n--- FILTERING ---"
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Original: #{numbers}"
puts "select { even }: #{numbers.select(&:even?)}"
puts "reject { even }: #{numbers.reject(&:even?)}"
puts "find { > 5 }: #{numbers.find { |n| n > 5 }}"
puts "find_all { > 5 }: #{numbers.find_all { |n| n > 5 }}"

# Reduce/Inject
puts "\n--- REDUCE/INJECT ---"
numbers = [1, 2, 3, 4, 5]
puts "Array: #{numbers}"
puts "sum: #{numbers.sum}"
puts "reduce(+): #{numbers.reduce(:+)}"
puts "reduce(*): #{numbers.reduce(:*)}"
puts "reduce(0) { sum }: #{numbers.reduce(0) { |sum, n| sum + n }}"

# Joining
puts "\n--- JOINING ---"
words = ["Ruby", "is", "awesome"]
puts "Array: #{words}"
puts "join(' '): #{words.join(' ')}"
puts "join('-'): #{words.join('-')}"
puts "join: #{words.join}"

# Checking conditions
puts "\n--- CHECKING CONDITIONS ---"
numbers = [2, 4, 6, 8]
puts "Array: #{numbers}"
puts "all? { even }: #{numbers.all?(&:even?)}"
puts "any? { > 5 }: #{numbers.any? { |n| n > 5 }}"
puts "none? { odd }: #{numbers.none?(&:odd?)}"
puts "one? { > 7 }: #{numbers.one? { |n| n > 7 }}"

# Array slicing
puts "\n--- SLICING ---"
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
puts "Original: #{numbers}"
puts "first(3): #{numbers.first(3)}"
puts "last(3): #{numbers.last(3)}"
puts "slice(2, 3): #{numbers.slice(2, 3)}"
puts "slice(2..5): #{numbers.slice(2..5)}"
puts "drop(5): #{numbers.drop(5)}"
puts "take_while { < 5 }: #{numbers.take_while { |n| n < 5 }}"

# Multidimensional arrays
puts "\n--- MULTIDIMENSIONAL ARRAYS ---"
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
puts "Matrix: #{matrix.inspect}"
puts "matrix[1][2]: #{matrix[1][2]}"
puts "flatten: #{matrix.flatten}"
puts "transpose: #{matrix.transpose.inspect}"
