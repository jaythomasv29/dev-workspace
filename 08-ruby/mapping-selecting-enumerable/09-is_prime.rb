# Write a method prime? that takes in a number and returns a boolean,
# indicating whether the number is prime. A prime number is only divisible by 1 and itself.

def prime?(num)
  # loop through from 2 to num (excluding num)
  # and if they are divisible by anything within that range,
  # then it is not a prime
  if (num < 2)
    return false
  end
  i = 2 # starting point for loop
  while i < num
    if num % i == 0 # if the number is divisible by any number within the range it is NOT prime
      return false
    end
    i += 1
  end
  return true
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
