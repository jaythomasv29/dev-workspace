# Write a method unique_elements that takes in an array and 
# returns a new array where all duplicate elements are removed. Solve this using a hash.

# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
  # a key in a hash is already unique
  # you can enumerate through each key and push to array
  # return result array with values pusehd in from hash
    uniqueEleArr = []
    uniqueKeys = Hash.new(0) # create hash
    arr.each {|ele| uniqueKeys[ele] +=1 }
    uniqueKeys.each_key {|k| uniqueEleArr.push(k)}
    return uniqueEleArr
  end
  
  print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
  puts