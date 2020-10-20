def fibonacci(length)
  # edge cases for lengths from 0-2
  if length == 0
    return []
  elsif length == 1
    return [1]
  elsif length == 2
    return [1, 1]
  else # all lengths greater than 2
    seq = [1, 1] # initial start sequence
    index = 1 # initial setting of index
    while seq.length < length # condition to check if length is in range
      current = seq[index]
      back = seq[index - 1]
      seq << back + current # push to seq
      index += 1 # increment index to next ele
    end
  end
  return seq
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
