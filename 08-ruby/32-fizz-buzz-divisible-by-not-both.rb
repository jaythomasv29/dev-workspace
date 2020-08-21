def fizz_buzz(max)
	nums = [] # returns array - containing all nums greater than 0 and less than max
  	# MUST BE DIVISIBLE by either 4 or 6 but not BOTH
  i = 1 # initial index is greater than 0
  while i < max
    if (i % 4 == 0 && i % 6 != 0) || (i % 6 == 0 && i % 4 != 0)
    	nums << i
  	end
    i+=1
  end
  return nums
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]