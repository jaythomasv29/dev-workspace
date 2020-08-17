name = 'James'
location = "Mountain View"
age = 27
eye_color = 'brown'
weight = 150

isEvenWeight = weight % 2 == 0 # Boolean
p isEvenWeight
# String interpolation only works in "" double quotes
puts "Hi my name is #{name} and I am located in #{location}. I am #{age} years old and my eye color is #{eye_color}. I am fat, I weigh #{weight}"
weight += 1 # Increment (weight = weight + 1)
p "my new weight is #{weight}"

eye_color = 'blue'
p "my new eye color is #{eye_color}"


