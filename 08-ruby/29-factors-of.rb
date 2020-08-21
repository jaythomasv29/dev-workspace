def factors_of(num)
    # return an array that has : All possible numbers factors less than or equal to the num
      factors = [] # factors array that is returned
      i = 1 # inital starting index that ranges from i to <= num
      while i <= num
        if num % i == 0 # if the current index is a perfect divider
          factors << i
          i+=1
        else
            i+=1
        end
      end
      return factors
    end
    
    print factors_of(3)   # => [1, 3]
    puts
    # print factors_of(4)   # => [1, 2, 4]
    # puts
    # print factors_of(8)   # => [1, 2, 4, 8]
    # puts
    # print factors_of(9)   # => [1, 3, 9]
    # puts
    # print factors_of(16)  # => [1, 2, 4, 8, 16]