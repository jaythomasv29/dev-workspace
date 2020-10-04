def get_double_age(hash)
  # takes in a hash
  # # access age key to get value
  # return the value doubled
  key = "age"
  return hash[key] * 2
end

puts get_double_age({ "name" => "App Academy", "age" => 5 }) # => 10
puts get_double_age({ "name" => "Ruby", "age" => 23 })       # => 46
