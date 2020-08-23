# Index & Include Methods in Ruby

#array/string.index(ele) - evaluates to the index where ele is found, else it is nil
p 'hello'.index('z')
[1,2,3,4,5,6,7].index(6)


# evaluates to a boolean
p 'hello'.include?('a' || 'e' || 'i' || 'o' || 'u')
p [1,2,3,4,5,6,7].include?(6)



# reverse method '.reverse