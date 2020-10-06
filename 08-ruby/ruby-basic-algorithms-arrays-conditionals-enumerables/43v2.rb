# Write a method is_valid_email that takes in a string
#  and returns a boolean indicating whether or not it is a valid email address.
# 11:52 -> 12:12
# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol split at '@' and check length there, if it is more than 2 length, then there is more than 1 '@'
# - contains only lowercase alphabetic letters before the @ - check if the characters are equal to the same when it is downcased
# - contains exactly one . after the @ - split the 2nd part at the '.' and if it is more than 2

def is_valid_email(str)
  result = true
  splitAmp = str.split("@")
  if splitAmp.length == 1 || splitAmp.length < 2 # check if the email has the correct length
    result = false
  elsif splitAmp[0] != splitAmp[0].downcase # check if chars before '@' are lower cased
    result = false
  elsif splitAmp[1].split(".").length == 1 || splitAmp[1].split(".").length > 2 #check after '@' to se # of periods match
    result = false
  elsif !!(splitAmp[0] =~ /\d/) # if it contains any digits
    result = false
  end
  return result
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false -- THIS SHOULD BE TRUE?
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
# p !!("hello123" =~ /\d/)
number = "0123456789"
p "1".include?(number)
