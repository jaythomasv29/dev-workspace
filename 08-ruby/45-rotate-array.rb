def rotate_array(arr, times)
  times.times do
    arr.unshift(arr[-1])
    arr.pop
  end
  return arr
end

p rotate_array(["Matt", "Danny", "Mashu", "Matthias"], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
p rotate_array(["a", "b", "c", "d"], 2) # => [ "c", "d", "a", "b" ]
