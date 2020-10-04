dog = {
  "name" => "Fido",
  "color" => "black",
  "age" => 3,
  "isHungry" => true,
  "enemies" => ["squirrel"],
}

dog["enemies"].push("mouse")

# Hash Methods ##
# .length
# .has_key?(k)
# .has_value?(v)
# .keys
# .values

# method that returns boolean if it contains specific key
p dog.has_key?("color")

p dog.values

# Why hashes?
