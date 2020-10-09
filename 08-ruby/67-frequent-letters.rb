# Write a method frequent_letters that takes in a string and
# returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  # loop through string - each char
  # create a hash to store occurences
  # loop through hash to return a result array if it is more than twice occured

  result = [] # have a result array to return
  occurences = Hash.new(0) # create hash
  string.each_char do |char|
    occurences[char] += 1
  end
  occurences.each do |key, val|
    if val > 2 # if val is greater than 2
      # push to result array the key
      result.push(key)
    end
  end
  return result
end

print frequent_letters("mississippi") #=> ["i", "s"]
puts
print frequent_letters("bootcamp") #=> []
puts
