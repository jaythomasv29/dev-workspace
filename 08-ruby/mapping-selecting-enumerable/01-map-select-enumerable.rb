arr = ["a", "b", "c", "d"]

# mapping enumerable- returns a new array, you use map to make a new array that manipulates the targeted array
new_arr = arr.map { |ele| "letter: #{ele}" }
p new_arr

# select enumerable

nums = [1, 2, 3, 4, 5, 6]

even_nums = nums.select { |num| num % 2 == 0 }
p even_nums

# Mapping exercise 1
arr = ["apple", "bootCamp", "cArRoT", "DanCE"]
uppercased = arr.map { |word| "#{word[0].upcase}#{word[1..-1].downcase}" }
p uppercased
### ----- ###

# Mapping exercise 2 - do block
mapped = arr.map do |word|
  first_char = word[0].upcase
  rest = word[1..-1].downcase
  first_char + rest # last line is the expression
end
p mapped

# Mapping exercise 3 - with index arr.map.with_index
index_repeater = arr.map.with_index do |word, i|
  word.capitalize * i
end
p index_repeater
