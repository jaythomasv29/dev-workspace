def is_palindrome(word)
  #pseudocode
	#if the reversed word is the same as the original word passed in
	#loop backwards and get the reversed word stored in a variable
	#if condition to see if the two strings are equal
	#return a boolean based on the result
  i = word.length-1
  reversedWord = ""
  while i >=0
    reversedWord += word[i]
    i-=1
  end
  if(reversedWord == word)
    return true
  else
    return false
  end
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false