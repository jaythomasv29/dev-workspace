# Write a method pick_primes that takes in an array of numbers
#  and returns a new array containing only the prime numbers.

def pick_primes(arr)
  return arr.select { |num| prime?(num) }
end

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

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts
