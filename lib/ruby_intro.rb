# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  res=0
  for i in 0...arr.length do
        res+=arr[i]
  end
  return res
end

def max_2_sum arr
        if arr.length==0
                return 0;
        end
        if arr.length==1
                return arr[0]
        end
        sorted = arr.sort
        return sorted[arr.length-1]+sorted[arr.length-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
        if arr.length<2
                return false
        end
        if arr.combination(2).find{|x,y| x+y==n} ==nil
                return false
        else
                return true
        end
end

# Part 2
def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return /\A(?=[^aeiouAEIOU])(?=[a-zA-Z])/.match(s)
end

def binary_multiple_of_4? s
      if /\A[0-1]+\z/.match(s)
        if s.to_i(2)%4==0
                return true
        else
                return false
        end
      else
        return false;
      end
end

# Part 3

class BookInStock
# YOUR CODE HERE
        attr_accessor :isbn, :price
        def initialize(isbn, price)
                raise ArgumentError if isbn.empty? || price <= 0
                @isbn = isbn
                @price = price
        end

         def price_as_string()
                return "$%0.2f"% @price
        end
end
