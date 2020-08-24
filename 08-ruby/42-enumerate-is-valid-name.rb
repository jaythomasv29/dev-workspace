# Write a method is_valid_name that takes in a string
# and returns a boolean indicating whether or not it is a valid name.

def is_valid_name(string)
  isValid = false
  # A name is valid is if satisfies all of the following:
  # - contains at least a first name and last name, separated by spaces
  # - each part of the name should be capitalized
  #
  # Hint: use str.upcase or str.downcase
  # "a".upcase # => "A"
  splittedName = string.split(" ")
  splittedName.each do |word|
    if word[1..-1].downcase == word[1..-1] && word[0] == word[0].upcase && splittedName.length >= 2 && splittedName.length <= 3
      isValid = true
    else isValid = false     end
  end

  return isValid # boolean
end

def is_valid_name2(string)
  isValid = false
  nameArr = string.split(" ")
  nameArr.each do |word|
    if !properCapitalizedChecker(word) || nameArr.length < 2 #if it is not proper capitalization break OR length of array is less than 2 return false
      return false
    else
      return true
    end
  end
end

# Helper function to check capitalization
def properCapitalizedChecker(word)
  return word == word.capitalize
end

# p is_valid_name 'James T Vongampai'
puts is_valid_name2("Kush Patel")       # => true
puts is_valid_name2("Daniel")           # => false
puts is_valid_name2("Robert Downey Jr") # => true
puts is_valid_name2("ROBERT DOWNEY JR") # => false
p "James and the giant peach".reverse
