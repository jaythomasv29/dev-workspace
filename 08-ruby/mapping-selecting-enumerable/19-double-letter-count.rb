# Write a method that takes in a string and returns the number of times that the same letter repeats twice in a row.

def double_letter_count(string)
  result = 0
  # loop through each char with index,
  # if prev is same as current we increment result
  # return result

  i = 1
  while i < string.length
    # if prev index and current is same
    if string[i] == string[i - 1] # if the current letter is equal to
      result += 1
    end
    i += 1
  end
  return result
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1
