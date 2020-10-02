# # Write a method two_d_translate that takes in a 2 dimensional array and translates it into a 1 dimensional array.
# # You can assume that the inner arrays always have 2 elements. See the examples.

def two_d_translate(two_d_Arr)
  # return a result array that stores 1d array
  result = []
  # loop through a nested loop
  # Since we assume elements always have 2 elements: index 0 is the object being added to 1-d array and index 1 is the number .times repeated
  two_d_Arr.each do |arr|
    arr[1].times do # repeat the operation the amount of times determined by 1st indexed in array
      result.push(arr[0]) # push 0th index
    end
  end
  return result
end

arr_1 = [
  ["boot", 3],
  ["camp", 2],
  ["program", 0],
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ["red", 1],
  ["blue", 4],
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts
# 4.times { p "hello 31" }
