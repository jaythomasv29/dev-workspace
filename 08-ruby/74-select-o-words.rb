# Write a method o_words that takes in a sentence string and
#  returns an array of the words that contain an "o". Use select in your solution!

def o_words(sentence)
  return sentence.split(" ").select { |word| word.include?("o") }
end

p o_words("james jamaica not orange") # ["not", "orange"]
