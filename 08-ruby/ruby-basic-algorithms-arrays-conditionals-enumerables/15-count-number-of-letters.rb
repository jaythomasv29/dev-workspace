def count_a(word)
  index = 0
  numberOfLetterA = 0
  while index < word.length
    if word[index] == 'A' || word[index] == 'a' # if the current index is equal to an A
      numberOfLetterA +=1 # increment the count
    end
    index+=1
  end
  # return the count once loop is complete
  return numberOfLetterA
end

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3