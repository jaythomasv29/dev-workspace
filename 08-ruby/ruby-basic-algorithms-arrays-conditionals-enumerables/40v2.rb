# Abbreviate Sentence
# Write a method abbreviate_sentence that takes in a sentence string and
# returns a new sentence where every word longer than
# 4 characters has all of it's vowels removed.

def abbreviate_sentence(sentence)
  result = []
  sentence.split(" ").each do |word| # split sentence to get each word into array to iterate over them
    if (word.length > 4) # if length is greater than 4 - remove that specific character at its given index using .index()
      filtered = word.delete("aeiou")
      result.push(filtered)
    else
      result.push(word)
    end
  end
  return result.join(" ")
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

# p "vowel".delete "aeiou"
# pseuodo
# split sentence to get each word into array to iterate over them
# check to see if each word and manipulate all words that have (length > 4)
# if length is greater than 4 - remove that specific character at its given index using .index()
# after push the word to a results [] arr
#return results [] arr
