def to_initials(name)
  result = [] #
  name.split(" ").each { |word| result.push(word[0]) }
  return result.join("")
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
