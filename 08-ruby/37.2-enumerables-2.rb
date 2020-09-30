# Enumerable Methods
# ARRAY
# .each
# .each_with_index
# STRING
# .each_char
# .each_char.with_index

months = ["Jan", "Feb", "Mar", "Apr"]

# BASIC WHILE LOOP
p "basic while loop"
i = 0
while i < months.length
  p months[i]
  i += 1
end

# Array enumerable using .each{}
months.each { |month| p month } # block of code with |month| being block parameter

# Array enumerable using .each{} - multiline block
p "multiline block"
months.each do |month|
  p month
end

# 'String Enumerable'
sentence = "people just want me to get a job, but do not know shit."
sentence.each_char { |char| p char } # String enumerable using .each_char

sentence.each_char do |char| # String enumerable using multiline block
  p char + "!"
end
