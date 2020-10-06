# Write a method hand_score that takes in a string representing a hand of cards and returns it's total score.
#  You can assume the letters in the string are only A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point.
# The letters of the input string not necessarily uppercase.

# create a hash with specific score points
# have a total_score variable to return - initially set to 0
# loop through each char that is passed in from parameter

def hand_score(str)
  total_score = 0
  default_score = {
    "A" => 4,
    "K" => 3,
    "Q" => 2,
    "J" => 1,
  }
  str.each_char do |char|
    if default_score.has_key?(char.upcase)
      total_score += default_score[char.upcase]
    end
  end
  return total_score
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9
