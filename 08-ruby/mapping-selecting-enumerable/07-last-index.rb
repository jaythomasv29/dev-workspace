# Write a method last_index that takes in a string and a character.
#  The method should return the last index where the character can be found in the string.

p "japanese".rindex("a")

def last_index(string, char)
  i = string.length - 1 # start at last index
  while i >= 0 # condition to continue loop until we meet 0th iteration 0 > 0 does not work, so it HAS to be 0 >= 0
    if !string.include?(char) # edge case
      return "no match found"
    elsif string[i] == char # if we find the character that matches
      return i # return the index
    end
    i -= 1
  end
  # return last index where the character can be found in the string
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m") #=> 7
puts last_index("subaru", "m") #=> nil
