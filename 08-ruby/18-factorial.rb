def factorial(num)
	index = 2
  	product = 1
  while index <= num #while loop remains true until that num is reached inclusive
    product *= index  # product = product * index
    index+=1 # increase index for next iteration
  end
  return product # when while loop is over return the product
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120