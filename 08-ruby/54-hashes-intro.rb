# Data Structure - Hashes
# 'key => value' pairs

my_hash = {
  "name" => "James Vongampai",
  "age" => 28, "sex" => "male",
  "isMarried" => true,
  "greet" => def sayHello
    p "Hi my name is #{my_hash["name"]}!"
  end,
}

my_hash["name"] # accessing a hash
my_hash["age"] = 21 # change value / reassign a hash

dog = {
  "name" => "Chelsea",
  "color" => "tan",
  "age" => 2,
  "isHungry" => true,
  "enemies" => ["squirrel"],
}
p dog.length # length of a hash
dog["enemies"].push("rabbit") # adding to the array insid e ahash
# p dog
dog["dislikedFoods"] = ["broccoli", "spinach"] # adding a new key / value pair
p dog

# hashes

people = [
  { "name" => "James", "age" => 28, "sex" => "male", "married" => true },
  { "name" => "Chelsea", "age" => 2, "sex" => "female", "married" => false },
]

p people[0]["name"]
