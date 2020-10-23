# Write a method anagrams? that takes in two words and returns a boolean indicating whether or not the words are anagrams.
#  Anagrams are words that contain the same characters but not necessarily in the same order. Solve this without using .sort

# my_hash = { "p" => 2, "z" => 1 }
# my_hash2 = { "z" => 1, "p" => 2 }
# p my_hash == my_hash2

def anagrams?(word1, word2)
  # loop through each word and store it in a seperate hash
  # then check for truthiness, and return the boolean
  return letter_counter(word1) == letter_counter(word2)
end

# helper function to turn words into a letter counter
def letter_counter(word)
  word_hash = Hash.new(0)
  word.each_char do |char|
    word_hash[char] += 1
  end
  return word_hash
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
