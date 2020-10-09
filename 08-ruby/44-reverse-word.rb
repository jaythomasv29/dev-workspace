# Write a method reverse_words that takes in a sentence string and r
# eturns the sentence with the order of the characters in each word reversed.
# Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.
# p "hello".reverse

def reverse_words(sentence)
  reversedArr = []
  splitted = sentence.split(" ")
  splitted.each do |word|
    reversedArr.push(word.reverse)
  end
  return reversedArr.join(" ")
end

# p reverse_words("hello world")

# puts reverse_words("keep coding") # => 'peek gnidoc'
# puts reverse_words("simplicity is prerequisite for reliability") # => 'yticilpmis si etisiuqererp rof ytilibailer'

def reverse_words2(sentence)
  result = []
  string = ""
  sentence.split(" ").each do |word|
    # loop each word inside going backwards
    i = word.length - 1
    while (i >= 0)
      string += word[i]
      i -= 1
    end
    result.push(string)
    string = ""
  end
  return result.join(" ")
end

puts reverse_words2("keep coding") # => 'peek gnidoc'
