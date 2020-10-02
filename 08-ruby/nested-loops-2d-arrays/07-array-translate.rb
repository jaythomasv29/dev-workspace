# Write a method array_translate that takes in an array whose elements alternate between words and numbers.
# The method should return a string where each word is repeated the number of times that immediately follows in the array.

def array_translate(arr)
  result = "" # return a string that is repeated number of times that immediately follows in array
  # the number occurs at odd indicies
  # the number can be repeated by looking at the next index
  # a single loop to loop through the array and increment the string # of times repeated
  index = 1
  while index < arr.length # if we land on a number, we can find out if that the previous element[index-1] is a letter
    arr[index].times { result += arr[index - 1] }
    index += 2 # increment to land on only number values
  end
  return result
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]);  # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1])  # => "redredredblue"
puts
