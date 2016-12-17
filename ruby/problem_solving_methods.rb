# Search through an array, returning the index of a matching number
def search_array(arr, number)
  result = nil
  arr.each_index do |index|
    if number == arr[index]
      result = index
      break
    end
  end
  result
end

# Driver code for search_array()
array = [42, 89, 23, 1]
p search_array(array, 89)
p search_array(array, 23)
p search_array(array, 100)

def fib(terms)
  terms -= 1
  arr = []
  if terms < 2
    # If asking for the 0th (or 1st) term push to the array either 0 or 0 and 1
    arr.push(0)
    arr.push(1) if terms == 1
  else
    # Populate the array with the first two numbers 0 and 1
    arr.push(0).push(1)
    # Start at the 3rd index
    index = 2
    while index <= terms
      # Populate the array further based on fibonacci sequence
      arr[index] = arr[index - 1] + arr[index - 2]
      index += 1
    end
  end
  # Return the modified array
  arr
end

# Driver code for fib()
p fib(1)
p fib(2)
p fib(3)
p fib(6)
p fib(10)
p fib(100)[99]
