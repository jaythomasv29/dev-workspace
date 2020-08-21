def odd_range(min, max)
	oddNums = [] # return an array containing all odd numbers from min to max
  while min <= max
    if min % 2 != 0# check if it is NOT an even number,
    oddNums << min # then push into the array
  	min+=1
    else
      min+=1 # else case if it is EVEN, move on
    end
  end
  return oddNums
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]