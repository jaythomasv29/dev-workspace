# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol split at '@' and check length there, if it is more than 2 length, then there is more than 1 '@'
# - contains only lowercase alphabetic letters before the @ - check if the characters are equal to the same when it is downcased
# - contains exactly one . after the @ - split the 2nd part at the '.' and if it is more than 2

def is_valid_email(str)
  isValid = true
  if str.split("@").length != 2 # contains exactly 1 @ symbol
    isValid = false
  end
  if str.split("@")[0].downcase != str.split("@")[0]
    isValid = false
  end
  if str.split("@").length == 2 && str.split("@")[1].split(".").length != 2
    isValid = false
  end
  if !!(str =~ (/\d/)) # if it contains any numbers, it is a false match
    isValid = false
  end
  return isValid
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false -- THIS SHOULD BE TRUE?
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
# p "digit"
# p !!("jdoe@gmail.com" =~ (/\d/))
