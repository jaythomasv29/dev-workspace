# Write a method pig_latin_word that takes in a word string and translates the word into pig latin.
# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  result = ""
  vowels = "aeiou"
  word.each_char.with_index do |char, i|
    if vowels.include?(char) && i == 0 # case where looking at first letter
      result = word += "yay"
      return result
    elsif vowels.include?(char) # this is logic where we manipulate a non-vowel first letter
      # we need to find the next vowel
      addFromVowel = word[i..-1] # range from vowel to end
      addToBack = word[0...i] # range from beginning consanant to excluding vowel
      result = "#{addFromVowel}#{addToBack}ay"
      return result
    end
  end
end

p pig_latin_word("jjjjjjames")
puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
