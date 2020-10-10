# Write a method triple_sequence that takes in two numbers, start and length.
# The method should return an array representing a sequence that begins with start
# and is length elements long. In the sequence, every element should be 3 times
# the previous element. Assume that the length is at least 1.

# have a loop that starts with start as initial index
# have the length variable to break out of loop once the result array has reached that length
# inside the loop we are multiplying by 3 to get the next element
# once it does, we end iterating and return

def triple_sequence(start, length)
  result = []
  result << start # inital start sequence
  index = 0
  while index < length - 1
    result << result[index] * 3
    index += 1
  end
  return result
end

def triple_sequence2(start, length)
  result = [start]
  (0...length).each do |index|
    result << result[index] * 3
    if result.length == length
      break
    end
  end
  return result
end

print triple_sequence2(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence2(4, 5) # => [4, 12, 36, 108, 324]
puts
