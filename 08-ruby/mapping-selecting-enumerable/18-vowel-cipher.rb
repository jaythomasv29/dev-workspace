# Write a method vowel_cipher that takes in a string and
# returns a new string where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(str)
  # have a vowel variable to check with
  # loop through the string, and locate vowels in a .each_char loop
  # when there is a vowel we can change the vowel in the new string
  # also check for vowels at the end because it will cause errors
  # all other letters are just added to the string, if not a vowel
  # return the vowel

  vowels = "aeiou"
  result = ""
  str.each_char do |char|
    vowels.include?(char) ? result += vowels[(vowels.index(char) + 1) % vowels.length] : result += char # if vowel
  end
  return result
end

p vowel_cipher("dog") # dug
p vowel_cipher("bootcamp") #=> buutcemp
p vowel_cipher("paper cup") #=> pepir cap
