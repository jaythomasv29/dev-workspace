def sum_elements(arr1, arr2)
	i = 0 # initial index for arr1
  	j = 0 # initial index for arr2
  combined = []
  while i < arr1.length
    while j < arr2.length
      combined << arr1[i] + arr2[j]
      i+=1
      j+=1
    end
  end
  return combined
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]


def sum_elements(arr1, arr2)
	i = 0 # initial index for arr1
  	# j = 0 # initial index for arr2
  combined = []
  while i < arr1.length
    while j < arr2.length
      combined << arr1[i] + arr2[i]
      i+=1
    end
  end
  return combined
end
