#!/usr/bin/env ruby
# Practice Script 7: String Manipulation

puts "=" * 50
puts "RUBY PRACTICE 7: String Manipulation"
puts "=" * 50

# String creation
puts "\n--- STRING CREATION ---"
string1 = "Hello"
string2 = 'World'
string3 = %q(This is a string)
string4 = <<~HEREDOC
  This is a
  multiline string
HEREDOC

puts "Double quotes: #{string1}"
puts "Single quotes: #{string2}"
puts "Percent notation: #{string3}"
puts "Heredoc:\n#{string4}"

# String interpolation
puts "\n--- STRING INTERPOLATION ---"
name = "Alice"
age = 25
puts "Single quotes don't interpolate: '#{name}'"
puts "Double quotes interpolate: \"My name is #{name} and I'm #{age} years old\""
puts "Math in interpolation: 2 + 2 = #{2 + 2}"

# String concatenation
puts "\n--- STRING CONCATENATION ---"
first = "Hello"
last = "World"
puts "Using +: #{first + ' ' + last}"
puts "Using <<: #{first.dup << ' ' << last}"
puts "Using concat: #{first.dup.concat(' ', last)}"

# String case methods
puts "\n--- CASE METHODS ---"
text = "Hello World"
puts "Original: #{text}"
puts "upcase: #{text.upcase}"
puts "downcase: #{text.downcase}"
puts "capitalize: #{text.capitalize}"
puts "swapcase: #{text.swapcase}"
puts "titleize (Rails): #{text.split.map(&:capitalize).join(' ')}"

# String manipulation
puts "\n--- STRING MANIPULATION ---"
text = "  Hello, Ruby!  "
puts "Original: '#{text}'"
puts "strip: '#{text.strip}'"
puts "lstrip: '#{text.lstrip}'"
puts "rstrip: '#{text.rstrip}'"
puts "reverse: '#{text.strip.reverse}'"
puts "length: #{text.length}"
puts "size: #{text.size}"

# String replacement
puts "\n--- STRING REPLACEMENT ---"
text = "Hello World"
puts "Original: #{text}"
puts "gsub (global substitute): #{text.gsub('o', '0')}"
puts "sub (first occurrence): #{text.sub('o', '0')}"
puts "delete: #{text.delete('l')}"
puts "tr (translate): #{text.tr('aeiou', '12345')}"

# String splitting and joining
puts "\n--- SPLIT AND JOIN ---"
sentence = "Ruby is a beautiful language"
words = sentence.split(' ')
puts "Original: #{sentence}"
puts "Split into words: #{words.inspect}"
puts "Join with '-': #{words.join('-')}"

csv = "apple,banana,cherry"
puts "\nCSV: #{csv}"
puts "Split by comma: #{csv.split(',').inspect}"

# String checking
puts "\n--- STRING CHECKING ---"
text = "Hello World"
puts "Text: '#{text}'"
puts "include?('World'): #{text.include?('World')}"
puts "start_with?('Hello'): #{text.start_with?('Hello')}"
puts "end_with?('!'): #{text.end_with?('!')}"
puts "empty?: #{text.empty?}"
puts "''.empty?: #{''.empty?}"

# String extraction
puts "\n--- STRING EXTRACTION ---"
text = "Hello World"
puts "Original: #{text}"
puts "text[0]: #{text[0]}"
puts "text[0..4]: #{text[0..4]}"
puts "text[6..-1]: #{text[6..-1]}"
puts "slice(0, 5): #{text.slice(0, 5)}"
puts "chars: #{text.chars.inspect}"

# String matching
puts "\n--- STRING MATCHING ---"
email = "user@example.com"
puts "Email: #{email}"
puts "Match regex /\\w+@\\w+\\.\\w+/: #{email.match?(/\w+@\w+\.\w+/)}"

text = "The year is 2024"
numbers = text.scan(/\d+/)
puts "\nText: #{text}"
puts "Extract numbers: #{numbers.inspect}"

# String formatting
puts "\n--- STRING FORMATTING ---"
puts "Right align: '%10s' % 'Ruby'"
puts "Left align: '%-10s' % 'Ruby'"
puts "Center: '%s' % 'Ruby'.center(10, '-')"
puts "ljust: '#{'Ruby'.ljust(10, '.')}'#"
puts "rjust: '#{'Ruby'.rjust(10, '.')}'#"

# String to number
puts "\n--- STRING TO NUMBER ---"
puts "'42'.to_i: #{'42'.to_i}"
puts "'3.14'.to_f: #{'3.14'.to_f}"
puts "'hello'.to_i: #{'hello'.to_i}"

# Number to string
puts "\n--- NUMBER TO STRING ---"
num = 42
puts "42.to_s: #{num.to_s}"
puts "42.to_s(2) [binary]: #{num.to_s(2)}"
puts "42.to_s(16) [hex]: #{num.to_s(16)}"

# Multiline strings
puts "\n--- MULTILINE STRINGS ---"
poem = <<~POEM
  Roses are red,
  Violets are blue,
  Ruby is awesome,
  And so are you!
POEM

puts poem

# String methods chaining
puts "\n--- METHOD CHAINING ---"
text = "  hello world  "
result = text.strip.upcase.gsub('O', '0').reverse
puts "Original: '#{text}'"
puts "After .strip.upcase.gsub('O', '0').reverse:"
puts "Result: '#{result}'"
