class PracticeController < ApplicationController
  def test
    # VARIABLES AND DATA TYPES
    @string_example = "Hello, Ruby!"
    @integer_example = 42
    @float_example = 3.14
    @symbol_example = :ruby_symbol
    @array_example = [1, 2, 3, "four", :five]
    @hash_example = { name: "John", age: 30, city: "NYC" }

    # OPERATORS
    @addition = 10 + 5
    @comparison = 10 > 5
    @string_concat = "Hello" + " " + "World"

    # CONTROL FLOW EXAMPLES
    @if_result = if @integer_example > 40
      "Number is greater than 40"
    elsif @integer_example == 40
      "Number is exactly 40"
    else
      "Number is less than 40"
    end

    @unless_result = unless @integer_example < 0
      "Number is not negative"
    end

    @case_result = case @integer_example
    when 0..20
      "Low number"
    when 21..50
      "Medium number"
    else
      "High number"
    end

    # LOOPS AND ITERATORS
    @each_example = []
    [1, 2, 3, 4, 5].each { |num| @each_example << num * 2 }

    @map_example = [1, 2, 3, 4, 5].map { |num| num ** 2 }

    @select_example = [1, 2, 3, 4, 5, 6].select { |num| num.even? }

    @reject_example = [1, 2, 3, 4, 5, 6].reject { |num| num.odd? }

    # STRING INTERPOLATION
    name = "Alice"
    age = 25
    @interpolation = "My name is #{name} and I am #{age} years old"

    # STRING MANIPULATION
    @upcase = "hello".upcase
    @downcase = "WORLD".downcase
    @reverse = "Ruby".reverse
    @split = "one,two,three".split(",")
    @length = "Hello".length

    # ARRAY METHODS
    @array_push = [1, 2, 3].push(4)
    @array_first = [10, 20, 30].first
    @array_last = [10, 20, 30].last
    @array_include = [1, 2, 3].include?(2)

    # HASH METHODS
    @hash_keys = { a: 1, b: 2, c: 3 }.keys
    @hash_values = { a: 1, b: 2, c: 3 }.values
    @hash_merge = { a: 1 }.merge({ b: 2 })

    # METHOD EXAMPLE
    @method_result = calculate_sum(10, 20)
    @block_result = with_timing { slow_operation }
  end

  private

  def calculate_sum(a, b)
    a + b
  end

  def with_timing
    start_time = Time.now
    result = yield
    end_time = Time.now
    { result: result, duration: (end_time - start_time) }
  end

  def slow_operation
    sleep(0.1)
    "Operation completed"
  end
end
