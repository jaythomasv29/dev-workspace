def select_odds(numbers)
	odds = []
  i = 0
  while i < numbers.length
    if numbers[i] % 2 != 0 #if the current value is not even
      odds << numbers[i] # add to new array
    #   i+=1
    # else
    end
    i+=1    
    end
  return odds
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []

arr1 = [1,2]
arr2 = [3,4]
p arr1 + arr2