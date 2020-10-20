# Write a method caesar_cipher that takes in a string and a number.
#  The method should return a new string where every character of the original is shifted num characters in the alphabet.

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  result = "" # return a new string of the result shifted

  # loop through the provided string
  # for each_char we will :
  #   -find its index in the given alphabet .index
  #   -find the shifted letter to put into the result string
  # return the new string
  str.each_char do |char|
    # edge case for range greater than 26
    if alphabet.index(char) + num > 26
      shift_by = (alphabet.index(char) + num) - 26
    else
      shift_by = alphabet.index(char) + num
    end
    new_char = alphabet[shift_by]
    result += new_char
  end
  return result
end

alphabet = "abcdefghijklmnopqrstuvwxyz"

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
