# Write a method first_in_array that takes in an array and two elements,
# the method should return the element that appears earlier in the array.

def first_in_array(arr, e1, e2)
  # get the index of both element1 and element2'
  # return the element with the least index arr[arr.index(e1)]
  #   if (arr.index(e1) < arr.index(e2))
  #     return arr[arr.index(e1)]
  #   else
  #     return arr[arr.index(e2)]
  #   end
  return arr.index(e1) < arr.index(e2) ? arr[arr.index(e1)] : arr[arr.index(e2)]
end

# p ["a", "y", "b"].index("y")
puts first_in_array(["a", "b", "c", "d"], "d", "b");  # => "b"
puts first_in_array(["cat", "bird", "dog", "mouse"], "dog", "mouse") # => "dog"
