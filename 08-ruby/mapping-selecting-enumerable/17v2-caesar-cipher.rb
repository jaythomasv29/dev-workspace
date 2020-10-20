# Write a method caesar_cipher that takes in a string and a number.
# The method should return a new string where every character of the original is shifted num characters in the alphabet.

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  result = ""
  str.each_char do |char|
    # loop through each char and shift it based on the alphabets index
    # add it to the new string
    result += alphabet[(alphabet.index(char) + num) % (alphabet.length)]
  end
  # return the new string
  return result
end

p caesar_cipher("apple", 1)
p caesar_cipher("zebra", 4)
