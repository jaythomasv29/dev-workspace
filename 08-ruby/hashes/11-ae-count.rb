# Write a method ae_count that takes in a string and
# returns a hash containing the number of a's and e's in the string.
# Assume the string contains only lowercase characters.
def ae_count(str)
  # create a hash - default 0
  # loop through each char
  # check if letter is 'a', seperate if statement if letter is 'e'
  # increment hash +=1 for each letter
  # return the hash

  counter = Hash.new(0)
  str.each_char do |character|
    if character == "a"
      counter[character] += 1
    elsif character == "e"
      counter[character] += 1
    end
  end
  return counter
end

# puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
# puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}

def ae_count2(str)
  hash = Hash.new(0)
  str.each_char do |char|
    if (char == "a" || char == "e")
      hash[char] += 1
    end
  end
  return hash
end

puts ae_count2("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count2("keyboard") #=> {"a"=>1, "e"=>1}
