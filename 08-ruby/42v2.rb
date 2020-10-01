# Write a method is_valid_name that takes in a string
# and returns a boolean indicating whether or not it is a valid name.

# time: 11:14

def is_valid_name(str)
  result = true
  # A name is valid is if satisfies all of the following:
  # - contains at least a first name and last name, separated by spaces
  # - each part of the name should be capitalized
  # Hint: use str.upcase or str.downcase
  # "a".upcase # => "A"
  nameArr = str.split(" ") # # split and print out each word
  if (nameArr.length < 2) # if a name is split and its length is less than 2, return false
    result = false
  end

  nameArr.each do |name|
    if (name[0] != name[0].upcase) # loop through each char after 0th index to see if it is valid
      result = false
    end
    name[1..-1].each_char do |char| # # loop through each char from [1] to [-1] index to check if it is lowercase
      if (char != char.downcase)
        result = false
      end
    end
  end
  return result
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
