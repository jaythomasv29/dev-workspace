# Write a method format_name that takes in a name string and returns the name properly capitalized.
# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(name)
    # loop through
    properCaps = [] # store name in array
    name.split(" ").each do |word|
        properCaps.push(word.capitalize())
    end
    return properCaps.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"

def format_name2(name)
    result = []
    name.split(" ").each do |word|
         result.push("#{word[0].upcase}#{word[1..word.length-1].downcase}") # you can also do [word[1..-1]]
    end
    return result.join(" ")
end 
p format_name2('brian CrAwFoRd scoTT')
p format_name2("chase WILSON") # => "Chase Wilson"