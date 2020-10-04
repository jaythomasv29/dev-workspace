my_hash = {
  "a" => 29,
}

# a default value that does not exist is nil
# puts my_hash["b"] == nil

#

# letter counter function
def counterChars(str)
  result = Hash.new(0) # change default value
  result = {}
  str.each_char do |char|
    # if the key does not exist, we create a key/value pair
    if !result.has_key?(char)
      result[char] = 1
    else
      # increment if it already exists
      result[char] += 1
    end
  end
  return result
end

# p counterChars("hello my name is james and I am studying for app academy")
p counterChars("bootcamp prep") # default value

my_hash = Hash.new(0)

str = "bootcamp prep"
str.each_char { |char| my_hash[char] += 1 }
p my_hash


