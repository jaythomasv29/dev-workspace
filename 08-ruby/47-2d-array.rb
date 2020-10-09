arr = ["a", "b", ["c", "d", "e"]]
# p arr[2][2] # e
# p arr[2][0] # c

arr2 = [
  ["a", "b", "c"], # 0
  ["d", "e", "f"], # 1
  ["g", "h", "i"], # 2
]

# p arr2[2][1] # h

arr2.each do |arr|
  arr.each { |ele| p ele }
end
