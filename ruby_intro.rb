# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  array1 = []
  array1 = array1 + arr.combination(2).map { |x, y| x + y}
  array1.include? n
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  if s == '0'
    return true
  end
  /^[01]*(00)$/.match(s)
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    @price = price
    @isbn = isbn
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
  end
  attr_accessor :price
  attr_accessor :isbn
  def price_as_string
    return "$%.2f" % price
  end
end
