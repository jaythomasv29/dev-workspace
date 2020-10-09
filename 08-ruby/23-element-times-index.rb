# Write a method element_times_index(nums) 
# that takes in an array of numbers and returns a new array containing every number of the original array multiplied with its index.
def element_times_index(numbers)
 i = 0 # initial index
 result = [] # declare result array as empty array
 while i < numbers.length
    result[i] = numbers[i] * i # assign the new array to the declared value in each index
    i+=1 #increment to go to each element of within the array
 end
 #return the value after while loop
 return result
end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]