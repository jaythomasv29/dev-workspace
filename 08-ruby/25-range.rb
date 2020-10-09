# Write a method range(min, max) that takes in two numbers min and max.
# The method should return an array containing all numbers from min to max inclusive.

def range(min, max)
  # should return an array containing aall numbers from min to max inclusive
  result = []
  i = min # initial starting point
  while i <= max # begin while loop that ends at max inclusive
    result << i # push to results array
    i += 1 # increment by 1
  end
  return result
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]


