# Write a method greatest_factor_array that takes in an array of numbers and
# returns a new array where every even number is replaced with it's greatest factor.
# A greatest factor is the largest number that divides another with no remainder.
# For example the greatest factor of 16 is 8. (For the purpose of this problem we won't say the greatest factor of 16 is 16,
# because that would be too easy, ha)

def greatest_factor_array(arr)
  arr.map { |number| greatest_factor_num(number) }
end

# helper function to get greatest factor of a number
def greatest_factor_num(num) # 30 => 15
  # loop through a range to find the greatest factor
  factors = [] # array for factors
  (2..num).each do |n|
    if num % n == 0
      factors << n
    end
  end
  if factors.length == 1
    return num
  else
    factor_arr = factors.select { |n| n != num } # return factors that aren't equal to itself
    return factor_arr[-1]
  end
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
