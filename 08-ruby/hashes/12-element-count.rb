# Write a method element_count that takes in an array and
# returns a hash representing the count of each element in the array.

def element_count(arr)
  hash_counter = Hash.new(0) #initiate the default value to 0
  #loop through array .each
  # for each element we will increment +=1 for each value in the hash
  # return the value
  arr.each do |ele|
    hash_counter[ele] += 1
  end
  return hash_counter
end

p element_count(["a", "a", "e", "b", "e"])
puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}
