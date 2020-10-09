def even_nums(max)
	result = [] # an empty array to store the even numbers
	i = 0 # initial index
	while i <= max # loop through based on while condition
  #check if the current index is an even num
      if i % 2 == 0
      # push into result array 
      # increment to next index
      result << i
      i+=1
      else
        i+=1
      end
  	end	 # end while
  return result
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]