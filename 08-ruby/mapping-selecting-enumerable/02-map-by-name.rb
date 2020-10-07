# Write a method map_by_name that takes in an array of hashes and returns a new array containing the names of each hash.

def map_by_name(arr)
  # loop through array of hashes
  names = arr.map do |hash|
    hash["name"] # this can be 1 line
  end
  return names
end

pets = [
  { "type" => "dog", "name" => "Rolo" },
  { "type" => "cat", "name" => "Sunny" },
  { "type" => "rat", "name" => "Saki" },
  { "type" => "dog", "name" => "Finn" },
  { "type" => "cat", "name" => "Buffy" },
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
  { "name" => "Japan", "continent" => "Asia" },
  { "name" => "Hungary", "continent" => "Europe" },
  { "name" => "Kenya", "continent" => "Africa" },
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts

p countries[0].keys

p 'jameson'.scan(/[aeiou]/)
