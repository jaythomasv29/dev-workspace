# Write a method same_char_collapse that takes in a string and returns a collapsed version of the string.
#  To collapse the string, we repeatedly delete 2 adjacent characters that are the same until there are no such adjacent characters.
#   # If there are multiple pairs that can be collapsed, delete the leftmost pair.
# For example, we take the following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

# our final result has a length of 2
# we can run a while loop to check until our length is 2 && while we remove adjacent pairs
# create a helper function that checks for adjacent pairs
def same_char_collapse(str)
  has_pairs = true
  while has_pairs
    # inside the loop set it to false
    has_pairs = false
    str.each_char.with_index do |char, i|
      if str[i] == str[i + 1]
        str.slice!(i..(i + 1)) # slices from range i..i+1 inclusive out of the original string
        has_pairs = true
        break
      end
    end
  end
  return str
end

puts same_char_collapse("zxxy")   #=> "zy"
# # because zzzxaaxy -> zxaaxy -> zxxy -> zy

puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
