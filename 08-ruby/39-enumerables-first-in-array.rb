# Write a method first_in_array that takes in an array and two elements, 
# the method should return the element that appears earlier in the array.

# store the index() each element, whichever one has a lesser index() value, return that element
# arr = [1,2,3,4,5]
# p arr.index(5) # Returns 4

# def first_in_array(arr, el1, el2)
#     el1Index = arr.index(el1)
#     el2Index = arr.index(el2)
#     earlierVal = el1Index < el2Index ? el1 : el2
#     return earlierVal 
# end

# Condensed version

def first_in_array(arr, el1, el2)
    return arr.index(el1) < arr.index(el2) ? el1 : el2 # ternary operator that returns which one has an earlier position within array
end


puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"
