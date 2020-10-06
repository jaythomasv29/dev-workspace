# Write a method first_half(array) that takes in an array and returns a new array containing the first half of the elements in the array. 
# If there is an odd number of elements, return the first half including the middle elemen
def first_half(array)
	i = 0 # begin at initial index of 0
  firstHalf = []# firstHalf array
  while i <= ((array.length-1)/2).ceil()
    firstHalf << array[i]
    i += 1
  end
  return firstHalf
end


print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]

def first_half(array)
	i = 0 # begin at initial index of 0
  firstHalf = []# firstHalf array
  while i <= array.length/2.0
    firstHalf << array[i]
    i += 1
  end
  return firstHalf
end