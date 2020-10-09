# Element Replace
# Write a method element_replace that takes in an array and a hash.
# The method should return a new array where elements of the original array are replaced with their corresponding values in the hash.

def element_replace(arr, hash)
  # elements within the array are keys
  # must get the value of the keys within array
  # loop through array and hash
  # check the array element within the nested loop of the hash
  result = [] # result array to return
  arr.each do |ele|
    if hash[ele] # if the key exists
      result.push hash[ele] # push into result array the value
    else
      result.push ele # if the key does not exist, then we push just the element back in place
    end
  end
  return result
end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = { "Serena Williams" => "tennis", "LeBron James" => "basketball" }
# print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = { "dog" => "bork", "cat" => "meow", "duck" => "quack" }
# print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts

def element_replace2(arr, hash)
  # if there is a key/value using the array WITHIN the has, replace that element in the new array
  result = [] # return the new result as array
  arr.each do |ele|
    hash.has_key?(ele) ? result << hash[ele] : result << ele
  end
  return result
end

p element_replace2(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
p element_replace2(arr2, hash2) # => ["bork", "meow", "mouse"]
