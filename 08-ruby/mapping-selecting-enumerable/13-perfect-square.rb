# # Write a method perfect_square? that takes in a number and
# # returns a boolean indicating whether it is a perfect square.
# # A perfect square is a number that results from multiplying a number by itself.
# # For example, 9 is a perfect square because 3  3 = 9, 25 is a
# # perfect square because 5  5 = 25.
# def perfect_square?(number)
#   if number == (Math.sqrt(number).floor ** 2)
#     return true
#   end
#   return false
# end

# # puts perfect_square?(5)   #=> false
# # puts perfect_square?(12)  #=> false
# # puts perfect_square?(30)  #=> false
# # puts perfect_square?(9)   #=> true
# # puts perfect_square?(25)  #=> true

# def perfect_square2?(number)
#   (1..number).each do |num|
#     p num ** 2
#     if num ** 2 == number
#       return true
#     end
#   end
#   return false
# end

# p perfect_square2?(25)

# 3 * 3 = 9
# 5 * 5 = 25

def perfect_square?(num)
end

# puts perfect_square?(5)   #=> false
# puts perfect_square?(12)  #=> false
# puts perfect_square?(30)  #=> false
# puts perfect_square?(9)   #=> true
# puts perfect_square?(25)  #=> true

def perfect_square2?(num)
  (1..num).each do |n|
    if n ** 2 == num
      return true
    end
  end
  return false
end

puts perfect_square2?(5)   #=> false
puts perfect_square2?(12)  #=> false
puts perfect_square2?(30)  #=> false
puts perfect_square2?(9)   #=> true
puts perfect_square2?(25)  #=> true
