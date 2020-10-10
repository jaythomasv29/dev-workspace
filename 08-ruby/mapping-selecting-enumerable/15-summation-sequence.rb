def summation_sequence(start, length)
  result = [start] # start of summation is start
  sum = 0
  result.each do |element|
    (1..element).each do |num| #
      sum += num
    end
    result.push(sum)
    sum = 0
    if (result.length == length)
      break # when we reach the length, break out of outer loop and return result
    end
  end
  return result
end

p summation_sequence(3, 4) # => [3, 6, 21, 231]
p summation_sequence(5, 3) # => [5, 15, 120]
