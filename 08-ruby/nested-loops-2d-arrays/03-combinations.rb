# Write a method combinations that takes in an array of unique elements,
# the method should return a 2D array representing all possible combinations of 2 elements of the array.

def combinations(arr)
  result = [] # return a 2D array representing all possible combinations of 2 elements of the array
  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      if idx2 > idx1
        result.push([ele1, ele2])
      end
    end
  end
  return result
end

p combinations([1, 2, 3, 4]) # [[1,2], [1,3], [1,4], [2,3], [2,4], [3,4]]
print combinations(["a", "b", "c"]);  # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]);  # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
