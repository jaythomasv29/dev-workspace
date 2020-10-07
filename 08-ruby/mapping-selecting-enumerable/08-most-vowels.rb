# Write a method most_vowels that takes in a sentence string and
#  returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
  hash = Hash.new(0) # create a new hash to store each word with the number of vowels
  words = sentence.split(" ") # get each word as element in array
  # loop through each word element
  vowels = "aeiou" # vowels to compare
  words.each do |word|
    word.each_char do |char| # nested loop to look through each char
      if vowels.include?(char) # if we see a vowel we increment our hash with the word stored
        hash[word] += 1
      end
    end
  end
  sorted = hash.sort_by { |k, v| v }
  return sorted[sorted.length - 1][0] # the last index of the array that is the 1st element that is the word
end

p most_vowels("what a wonderful life") #=> "wonderful"
# Helper function to count vowels
def vowel_count(word)
  count = 0
  vowel = "aeiou"
  word.each_char do |char|
    if vowel.include?(char)
      count += 1
    end
  end
  return count
end

def mostVowels(sentence)
  word_array = sentence.split(" ")
  current_max_word = word_array[0] # value to store current word with most vowels
  sentence.split(" ").each do |word| # loop through each word element in array
    if vowel_count(current_max_word) < vowel_count(word)
      current_max_word = word
    end
  end
  return current_max_word
end

p mostVowels("what a wonderful life") #=> "wonderful"
