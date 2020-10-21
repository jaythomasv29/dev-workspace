# Write a method pyramid_sum that takes in an array of numbers representing the base of a pyramid.
# The function should return a 2D array representing a complete pyramid with the given base. To construct a level of the pyramid,
# we take the sum of adjacent elements of the level below.

# create helper function that takes in array and adds adjacent sum
# pyramid_sum takes in the base array
# result array has base result = [base]
# loop through and use adjacent sum to continue to add
# loop until we reach the peak - a starting element array with a 0 length
# unshift to result array the result of adjacent sum
# return the result
def pyramid_sum(arr)
  pyramid_sum = [arr] # start with the base
  # loop through and continue to run adjacent_sums to each element and unshift until beginning is a length of 1
  while pyramid_sum[0].length != 1
    pyramid_sum.unshift(adjacent_sum(pyramid_sum[0])) # pushes the arr returned by adj_sum to pyramid_sum
  end
  return pyramid_sum
end

def adjacent_sum(arr)
  adj_sums = []
  i = 0
  while i < arr.length - 1 # because we limit before the edge of the array
    adj_sums << arr[i] + arr[i + 1]
    i += 1
  end
  return adj_sums
end

# p adjacent_sum([1, 4, 6])

p pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
# puts

p pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
# # puts
