# Index & Include Methods in Ruby

#array/string.index(ele) - evaluates to the index where ele is found, else it is nil
p "hello".index("z") # nil
p "james".index("j") # 0
p [1, 1, 2, 3, 4, 5, 6, 7].index(1) # shows first occurance - 0

# # evaluates to a boolean
p "hello".include?("h")
p [1, 2, 3, 4, 5, 6, 7].include?(6) # 5

# reverse method .reverse

# .reverse
# .reverse! # - changes the existing variable in place
string1 = "vongampai"
p string1.reverse
p string1
