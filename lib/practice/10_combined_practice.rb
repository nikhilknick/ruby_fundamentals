#!/usr/bin/env ruby
# Practice Script 10: Combined Practice - Mini Projects

puts "=" * 50
puts "RUBY PRACTICE 10: Combined Exercises"
puts "=" * 50

# ====================
# EXERCISE 1: Grade Calculator
# ====================
puts "\n=== EXERCISE 1: Grade Calculator ==="

def calculate_grade(scores)
  return "No scores provided" if scores.empty?

  average = scores.sum.to_f / scores.length

  grade = case average
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else 'F'
  end

  {
    scores: scores,
    average: average.round(2),
    grade: grade
  }
end

student_scores = [85, 92, 78, 90, 88]
result = calculate_grade(student_scores)
puts "Scores: #{result[:scores]}"
puts "Average: #{result[:average]}"
puts "Grade: #{result[:grade]}"

# ====================
# EXERCISE 2: Word Frequency Counter
# ====================
puts "\n=== EXERCISE 2: Word Frequency Counter ==="

def word_frequency(text)
  words = text.downcase.gsub(/[^a-z\s]/, '').split
  frequency = Hash.new(0)

  words.each { |word| frequency[word] += 1 }

  frequency.sort_by { |word, count| -count }.to_h
end

text = "The quick brown fox jumps over the lazy dog. The dog was very lazy."
frequencies = word_frequency(text)

puts "Text: #{text}"
puts "\nWord frequencies:"
frequencies.each { |word, count| puts "  #{word}: #{count}" }

# ====================
# EXERCISE 3: To-Do List Manager
# ====================
puts "\n=== EXERCISE 3: To-Do List Manager ==="

class TodoList
  def initialize
    @tasks = []
  end

  def add_task(task, priority: :medium)
    @tasks << { task: task, priority: priority, completed: false }
  end

  def complete_task(index)
    @tasks[index][:completed] = true if @tasks[index]
  end

  def pending_tasks
    @tasks.reject { |task| task[:completed] }
  end

  def completed_tasks
    @tasks.select { |task| task[:completed] }
  end

  def list_all
    @tasks.each_with_index do |task, i|
      status = task[:completed] ? "✓" : "○"
      priority = task[:priority]
      puts "  #{i}. [#{status}] [#{priority}] #{task[:task]}"
    end
  end
end

todo = TodoList.new
todo.add_task("Learn Ruby basics", priority: :high)
todo.add_task("Practice arrays and hashes", priority: :high)
todo.add_task("Build a small project", priority: :medium)
todo.add_task("Read Ruby documentation", priority: :low)

puts "All tasks:"
todo.list_all

puts "\nCompleting task 0..."
todo.complete_task(0)

puts "\nPending tasks: #{todo.pending_tasks.length}"
puts "Completed tasks: #{todo.completed_tasks.length}"

# ====================
# EXERCISE 4: Number Statistics
# ====================
puts "\n=== EXERCISE 4: Number Statistics ==="

def statistics(numbers)
  return "Empty array" if numbers.empty?

  {
    count: numbers.length,
    sum: numbers.sum,
    average: (numbers.sum.to_f / numbers.length).round(2),
    min: numbers.min,
    max: numbers.max,
    range: numbers.max - numbers.min,
    median: calculate_median(numbers),
    even_count: numbers.count(&:even?),
    odd_count: numbers.count(&:odd?)
  }
end

def calculate_median(numbers)
  sorted = numbers.sort
  len = sorted.length
  (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end

numbers = [15, 22, 8, 31, 47, 12, 29, 36, 19, 42]
stats = statistics(numbers)

puts "Numbers: #{numbers}"
puts "Statistics:"
stats.each { |key, value| puts "  #{key}: #{value}" }

# ====================
# EXERCISE 5: Contact Book
# ====================
puts "\n=== EXERCISE 5: Contact Book ==="

class ContactBook
  def initialize
    @contacts = []
  end

  def add_contact(name, phone, email)
    @contacts << { name: name, phone: phone, email: email }
  end

  def find_by_name(name)
    @contacts.select { |c| c[:name].downcase.include?(name.downcase) }
  end

  def list_all
    @contacts.each_with_index do |contact, i|
      puts "  #{i + 1}. #{contact[:name]}"
      puts "     Phone: #{contact[:phone]}"
      puts "     Email: #{contact[:email]}"
    end
  end

  def count
    @contacts.length
  end
end

book = ContactBook.new
book.add_contact("Alice Smith", "555-1234", "alice@example.com")
book.add_contact("Bob Johnson", "555-5678", "bob@example.com")
book.add_contact("Charlie Brown", "555-9012", "charlie@example.com")

puts "All contacts (#{book.count}):"
book.list_all

puts "\nSearch for 'Alice':"
results = book.find_by_name("Alice")
results.each { |c| puts "  Found: #{c[:name]} - #{c[:phone]}" }

# ====================
# EXERCISE 6: Fibonacci Sequence
# ====================
puts "\n=== EXERCISE 6: Fibonacci Sequence ==="

def fibonacci(n)
  return [] if n <= 0
  return [0] if n == 1

  sequence = [0, 1]

  (2...n).each do |i|
    sequence << sequence[i-1] + sequence[i-2]
  end

  sequence
end

fib_10 = fibonacci(10)
puts "First 10 Fibonacci numbers: #{fib_10}"
puts "Sum: #{fib_10.sum}"
puts "Even numbers: #{fib_10.select(&:even?)}"

# ====================
# EXERCISE 7: Text Analyzer
# ====================
puts "\n=== EXERCISE 7: Text Analyzer ==="

def analyze_text(text)
  {
    characters: text.length,
    characters_no_spaces: text.gsub(/\s/, '').length,
    words: text.split.length,
    sentences: text.split(/[.!?]/).reject(&:empty?).length,
    paragraphs: text.split(/\n\n/).length,
    longest_word: text.split.max_by(&:length),
    shortest_word: text.split.min_by(&:length)
  }
end

sample_text = "Ruby is a dynamic programming language. It focuses on simplicity and productivity. Ruby has an elegant syntax that is natural to read and easy to write."

analysis = analyze_text(sample_text)
puts "Text analysis:"
analysis.each { |key, value| puts "  #{key}: #{value}" }

# ====================
# EXERCISE 8: Shopping Cart
# ====================
puts "\n=== EXERCISE 8: Shopping Cart ==="

def calculate_total(cart, discount_percent = 0)
  subtotal = cart.sum { |item| item[:price] * item[:quantity] }
  discount = subtotal * (discount_percent / 100.0)
  total = subtotal - discount

  {
    items: cart.length,
    subtotal: subtotal.round(2),
    discount: discount.round(2),
    total: total.round(2)
  }
end

cart = [
  { name: "Book", price: 15.99, quantity: 2 },
  { name: "Pen", price: 2.50, quantity: 5 },
  { name: "Notebook", price: 8.99, quantity: 3 }
]

puts "Shopping cart:"
cart.each { |item| puts "  #{item[:name]}: $#{item[:price]} x #{item[:quantity]}" }

totals = calculate_total(cart, 10)
puts "\nSummary:"
puts "  Items: #{totals[:items]}"
puts "  Subtotal: $#{totals[:subtotal]}"
puts "  Discount (10%): -$#{totals[:discount]}"
puts "  Total: $#{totals[:total]}"

# ====================
# EXERCISE 9: Prime Number Finder
# ====================
puts "\n=== EXERCISE 9: Prime Numbers ==="

def is_prime?(n)
  return false if n < 2
  return true if n == 2

  (2..Math.sqrt(n)).none? { |i| n % i == 0 }
end

def find_primes(limit)
  (2..limit).select { |n| is_prime?(n) }
end

primes = find_primes(50)
puts "Prime numbers up to 50:"
puts primes.join(", ")
puts "Count: #{primes.length}"

# ====================
# EXERCISE 10: Data Transformation
# ====================
puts "\n=== EXERCISE 10: Data Transformation ==="

users = [
  { name: "Alice", age: 25, role: "admin" },
  { name: "Bob", age: 30, role: "user" },
  { name: "Charlie", age: 35, role: "admin" },
  { name: "David", age: 28, role: "user" }
]

# Find all admins
admins = users.select { |u| u[:role] == "admin" }
puts "Admins: #{admins.map { |u| u[:name] }.join(', ')}"

# Average age
avg_age = users.sum { |u| u[:age] } / users.length.to_f
puts "Average age: #{avg_age.round(1)}"

# Group by role
by_role = users.group_by { |u| u[:role] }
puts "\nUsers by role:"
by_role.each { |role, users| puts "  #{role}: #{users.map { |u| u[:name] }.join(', ')}" }

# Transform to hash with names as keys
users_hash = users.map { |u| [u[:name], u] }.to_h
puts "\nAccess user: #{users_hash['Alice']}"

puts "\n" + "=" * 50
puts "Practice complete! Great job!"
puts "=" * 50
