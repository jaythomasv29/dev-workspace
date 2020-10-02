# Write a method opposite_count that takes in an array of unique numbers.
# The method should return the number of pairs of elements that sum to 0.

def opposite_count(arr)
  pairs = 0
  # loop through the array
  # use a nested loop to search for another element within the array that meets condition (ele + ele2 == 0)
  # if true -> increment pairs
  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      #   if (idx2 > idx1) # ensure that the nested index is starting at 1, not 0
      if (ele1 + ele2 == 0 && idx2 > idx1)
        pairs += 1
      end
      #   end
    end
  end
  return pairs #return pairs
end

puts opposite_count([2, 5, 11, -5, -2, 7]) # => 2
puts opposite_count([21, -23, 24 - 12, 23]) # => 1
