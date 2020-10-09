# Write a method to_initials that takes in a person's name string and returns a string representing their initials.

def to_initials(name)
    initials = [] # store initials in empty array to return
    nameArr = name.split(" ") # split into each word array
    nameArr.each { |word| initials.push(word[0]) }  # push each first character to initials
    return initials.join("")
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"


# Another version of algorithm 

def to_initials2(name)
    parts = name.split(" ")
    initials = ""
    parts.each { |part| initials += part[0] }
    return initials
  end


puts to_initials2("Kelvin Bridges")      # => "KB"
puts to_initials2("Michaela Yamamoto")   # => "MY"
puts to_initials2("Mary La Grange")      # => "MLG"