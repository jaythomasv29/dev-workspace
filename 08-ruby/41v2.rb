# Write a method format_name that takes in a name string and returns the name properly capitalized.
# 3:32

# Completed at 3:36

def format_name(string)
  result = []
  #pseudo
  # split the string into an array for each word
  # Fastest way would be to use  "string".capitalize()
  string.split(" ").each { |word| result.push(word.capitalize) }
  return result.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
