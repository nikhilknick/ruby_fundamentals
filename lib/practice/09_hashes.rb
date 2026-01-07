#!/usr/bin/env ruby
# Practice Script 9: Working with Hashes

puts "=" * 50
puts "RUBY PRACTICE 9: Hashes"
puts "=" * 50

# Hash creation
puts "\n--- HASH CREATION ---"
hash1 = { name: "Alice", age: 25, city: "NYC" }
hash2 = { "name" => "Bob", "age" => 30 }
hash3 = Hash.new
hash4 = Hash.new(0)  # Default value is 0

puts "Symbol keys: #{hash1}"
puts "String keys: #{hash2}"
puts "Empty hash: #{hash3}"
puts "Hash with default: #{hash4}"

# Accessing elements
puts "\n--- ACCESSING ELEMENTS ---"
person = { name: "Alice", age: 25, city: "NYC", country: "USA" }

puts "Hash: #{person}"
puts "person[:name]: #{person[:name]}"
puts "person[:age]: #{person[:age]}"
puts "person[:email] (missing): #{person[:email]}"
puts "person.fetch(:name): #{person.fetch(:name)}"
puts "person.fetch(:email, 'N/A'): #{person.fetch(:email, 'N/A')}"

# Adding and updating
puts "\n--- ADDING AND UPDATING ---"
person = { name: "Alice", age: 25 }
puts "Start: #{person}"

person[:city] = "NYC"
puts "After adding city: #{person}"

person[:age] = 26
puts "After updating age: #{person}"

person.store(:country, "USA")
puts "After store: #{person}"

# Removing elements
puts "\n--- REMOVING ELEMENTS ---"
person = { name: "Alice", age: 25, city: "NYC", country: "USA" }
puts "Start: #{person}"

deleted = person.delete(:country)
puts "After delete(:country): #{person}, returned: #{deleted}"

person.delete_if { |key, value| value.is_a?(Integer) }
puts "After delete_if (integers): #{person}"

# Hash methods
puts "\n--- HASH METHODS ---"
person = { name: "Alice", age: 25, city: "NYC" }

puts "keys: #{person.keys}"
puts "values: #{person.values}"
puts "size/length: #{person.size}"
puts "empty?: #{person.empty?}"
puts "has_key?(:name): #{person.has_key?(:name)}"
puts "has_value?(25): #{person.has_value?(25)}"
puts "key?(name): #{person.key?(:name)}"
puts "value?(25): #{person.value?(25)}"

# Merging hashes
puts "\n--- MERGING ---"
hash1 = { a: 1, b: 2 }
hash2 = { b: 3, c: 4 }

puts "hash1: #{hash1}"
puts "hash2: #{hash2}"
puts "merge: #{hash1.merge(hash2)}"
puts "merge (reversed): #{hash2.merge(hash1)}"

# Merging with block
merged = hash1.merge(hash2) { |key, old_val, new_val| old_val + new_val }
puts "merge with block (sum): #{merged}"

# Iterating over hashes
puts "\n--- ITERATION ---"
person = { name: "Alice", age: 25, city: "NYC" }

puts "each:"
person.each { |key, value| puts "  #{key}: #{value}" }

puts "each_key:"
person.each_key { |key| puts "  #{key}" }

puts "each_value:"
person.each_value { |value| puts "  #{value}" }

# Transforming hashes
puts "\n--- TRANSFORMING ---"
prices = { apple: 1.50, banana: 0.75, cherry: 3.00 }

puts "Original: #{prices}"
puts "transform_values { * 2 }: #{prices.transform_values { |v| v * 2 }}"
puts "transform_keys(&:upcase): #{prices.transform_keys(&:upcase)}"

# Selecting and rejecting
puts "\n--- SELECT AND REJECT ---"
numbers = { a: 1, b: 2, c: 3, d: 4, e: 5 }

puts "Original: #{numbers}"
puts "select { value.even? }: #{numbers.select { |k, v| v.even? }}"
puts "reject { value.even? }: #{numbers.reject { |k, v| v.even? }}"

# Converting hashes
puts "\n--- CONVERSIONS ---"
hash = { name: "Alice", age: 25, city: "NYC" }

puts "to_a: #{hash.to_a}"
puts "invert: #{hash.invert}"

array_of_arrays = [[:name, "Bob"], [:age, 30]]
puts "Array to hash: #{array_of_arrays.to_h}"

# Nested hashes
puts "\n--- NESTED HASHES ---"
user = {
  name: "Alice",
  age: 25,
  address: {
    street: "123 Main St",
    city: "NYC",
    zip: "10001"
  },
  hobbies: ["reading", "coding"]
}

puts "Nested hash: #{user}"
puts "user[:address][:city]: #{user[:address][:city]}"
puts "user[:hobbies][0]: #{user[:hobbies][0]}"

# dig method (safe navigation)
puts "\n--- DIG (SAFE NAVIGATION) ---"
puts "dig(:address, :city): #{user.dig(:address, :city)}"
puts "dig(:contact, :email): #{user.dig(:contact, :email)}"

# Default values
puts "\n--- DEFAULT VALUES ---"
counter = Hash.new(0)
words = "hello world hello ruby world"

words.split.each { |word| counter[word] += 1 }
puts "Word count: #{counter}"

# Fetch with block
puts "\n--- FETCH WITH BLOCK ---"
person = { name: "Alice" }

puts "Fetch name: #{person.fetch(:name)}"
puts "Fetch email (with block): #{person.fetch(:email) { 'no email' }}"

# Compact (remove nil values)
puts "\n--- COMPACT ---"
hash = { a: 1, b: nil, c: 3, d: nil }
puts "Original: #{hash}"
puts "compact: #{hash.compact}"

# Slice (extract keys)
puts "\n--- SLICE ---"
person = { name: "Alice", age: 25, city: "NYC", country: "USA" }
puts "Original: #{person}"
puts "slice(:name, :city): #{person.slice(:name, :city)}"

# except (remove keys)
puts "\n--- EXCEPT ---"
puts "except(:age): #{person.except(:age)}"

# Symbols vs strings as keys
puts "\n--- SYMBOL VS STRING KEYS ---"
hash1 = { name: "Alice" }      # Symbol key
hash2 = { "name" => "Alice" }  # String key

puts "Symbol key hash[:name]: #{hash1[:name]}"
puts "String key hash['name']: #{hash2['name']}"
puts "They're different: hash1 == hash2? #{hash1 == hash2}"

# Method chaining
puts "\n--- METHOD CHAINING ---"
hash = { a: 1, b: 2, c: 3, d: 4, e: 5 }

result = hash
  .select { |k, v| v.odd? }
  .transform_values { |v| v * 2 }

puts "Original: #{hash}"
puts "Select odd, multiply by 2: #{result}"
