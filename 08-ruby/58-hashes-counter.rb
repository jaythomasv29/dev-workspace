# Hashes
# counter hash
# sort_by

# create a default value for hash to store/count occurences of characters
# loop through and increment
# print hash
counter = Hash.new(0)
str = "mississippi"
str.each_char { |char| counter[char] += 1 }
p counter

def counterLetters(str)
  counter = Hash.new(0)
  str.each_char { |char| counter[char] += 1 }
  sorted = counter.sort_by { |k, v| v } # order by frequency of value
  return sorted
end

p counterLetters("appacademy")

# nil
my_hashes = { "dog" => true }
p my_hashes["cat"] # nil, a default value that means 'empty'
