def count_e(word)
    #iterate through the string
    countE = 0 # store the number of e's in a variable
    i = 0
    while i < word.length
        if (word[i] == 'e' || word[i] == 'E')
        countE +=1 #if equal to e increment by 1
        end
    i+=1 # increment index
    end
    return countE # returns a number that keeps track of letter 'e' || 'E'
  end
  
  puts count_e("movie") # => 1
  puts count_e("excEllent") # => 3