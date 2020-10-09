# Write a method yell(words) that takes in an array of words and returns a
# new array where every word from the original array has an exclamation point after it.

def yell(words)
    #store new array with result
    result = []
      # index
    i = 0
    while i < words.length
      result[i] = "#{words[i]}!" #string interpolation to add exclamation
      i+=1 # increment to next element in array
    end
    return result
  end
  
  print yell(["hello", "world"]) # => ["hello!", "world!"]
  puts
  print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]