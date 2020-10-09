# require "prime"

# p Prime.prime?(7)  #=> true
# p Prime.prime?(4)  #=> false
# Write a method prime_factors that takes in a number and
# returns an array containing all of the prime factors of the given number.

def prime_factors(num)
	get_factors(num)
end

# helper function to get prime numbers
def get_factors(num)
  factors = []
  if num < 2
    return false
  end
  (2...num).each_with_index do |number, i|
    if i < 2
      p 'next'
      next
    end
    if is_prime(i) && num % i == 0 # the number is prime AND it is a divisor of the number passed in
    	factors << i
    end
  end
  return factors
end
# prime helper function
def is_prime(integer)
  isPrime = true
if integer < 2
  return false
end
  (2...integer).each do |n|
    if integer % n == 0
      # p "#{integer} is not prime"
      return false
    end
  end
  return isPrime
end
p get_factors(60)
# print prime_factors(24) #=> [2, 3]
# puts
# print prime_factors(60) #=> [2, 3, 5]
# puts