# words with strings and arrays

letters = ["a", "b", "c", "d", "e", "f", "g"]
#slicing inclusive of range letters[beginIndex..endIndex] '..' is inclusive of range
#slicing inclusive of range letters[beginIndex...endIndex] '...' is excluding the range
# p letters[1..3] # Inclusive
# p letters
# p letters[1...3] # Excludes the end

p letterAtoD = letters[0..3]
p letterBtoC = letters[1...3]
# letters.delete_at(letters.index("a"))

# Negative Indicies
p letters[-1] # f
p letters[0..-1] # entire array

# p letters.push("h", "i")
# p letters
