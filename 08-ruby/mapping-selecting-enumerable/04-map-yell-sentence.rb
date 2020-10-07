# Write a method yell_sentence that takes in a sentence string
#  and returns a new sentence where every word is yelled.
# See the examples. Use map to solve this.

def yell_sentence(sentence)
  # split into array
  # map to get a new array with words in uppercase followed by exclaimation
  # join with a space after each element as a single string
  return sentence.split(" ").map { |word| "#{word.upcase}!" }.join(" ")
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"
