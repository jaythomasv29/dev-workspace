# Write a method consonant_cancel that takes in a sentence and returns a new sentence where every word begins with it's first vowel.

# create a find first vowel helper function to return the index

# in main method split by space & loop through each word and reassign each word by slicing from [range..end]
# join(" ") and return the modified sentence as a result
def consonant_cancel(sentence)
  result = sentence.split(" ").map do |word|
    word[find_first_vowel(word)..-1] # get the index of the first vowel range until the end inclusive
  end
  return result.join(" ")
end

def find_first_vowel(word)
  vowels = "aeiou"
  word.each_char.with_index do |char, index|
    if vowels.include?(char)
      return index
    end
  end
end

p find_first_vowel("bird")

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
