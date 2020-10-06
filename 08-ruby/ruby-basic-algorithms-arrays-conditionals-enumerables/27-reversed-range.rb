def reverse_range(min, max)
    reversed = [] # reversed stored in array
      i = max # inital index is set to max
      # while condition to decrement with the range excluded
        while i > min
        reversed << i # add the number into the reversed array
        i-=1
      end
    return reversed # return the array
  end
  
  print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
  puts
  print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]