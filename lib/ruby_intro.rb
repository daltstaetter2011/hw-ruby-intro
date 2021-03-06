# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.sum()
end

def max_2_sum(arr)
  # YOUR CODE HERE
  (arr.empty?) ? 0 : arr.max(2).sum
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  arr.combination(2).any? {|x, y| x + y == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  (/^[b-df-hj-np-tv-zB-DF-HJ-NP-tV-Z]/ =~ s[0] and /[^AEIOUaeiou]/ =~ s[0]) ? true : false
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  (s == "0") or (s == "00") or (/^[01]+00$/ =~ s)
end

# Part 3

class BookInStock
# YOUR CODE HERE
    def initialize(isbn, price)
       if (isbn.empty? or price <= 0.0)
           raise ArgumentError.new("Invalid Input")
       end
        
       @isbn = isbn
       @price = price
    end
    
    def isbn
        @isbn
    end
    
    def isbn=(new_isbn)
        @isbn = new_isbn
    end
    
    def price
        @price
    end
    
    def price=(new_price)
        @price = new_price
    end
    
    def price_as_string
       "$%0.2f" % [price]
    end
    
end
