# ARRAY ENUMERABLES - .each, .each_with_index
# months = ["January", "February", "March", "April"]

# # # single line loop
# months.each { |ele| p ele }

# # multi-line loop
# months.each do |ele|
#     puts ele
# end

# months.each_with_index do |ele, i|
#     puts "#{ele} #{i}"
# end

# STRINGS ENUMERABLES - each_char, each_char.with_index
sentence = "Today is a great day!"

#single line loop for string
# sentence.each_char { |char| p char}


# multi line loop for string
p 'Multi-line string loop'
sentence.each_char do |char|
    p char
end

# # multi-line loop for strings with index
# sentence.each_char.with_index do |char, i|
#      puts "#{char}, #{i}"
# end

# # RANGE ENUMERABLE - (start..end).each , '..' is inclusive, '...' is excluding the end range
# (1..10).each { |num| p num }
# (1...10).each { |num| p num }

# # Write a method fizzBuzz that takes in a number max and returns an array containing all numbers
# # that are divisible by 3 or 5, but not both
# def fizzBuzz(max)
#     result = []
#     (0...max).each do |num|
#         if( (num % 3 == 0 || num % 5 == 0) && !(num % 3 == 0 && num % 5 == 0))
#             result.push(num)
#         end
#     end
#     return result
# end
# p fizzBuzz(20)


# (1..10).each { |n| p n }


# # Basic loops
# (1..5).each { p 'hi'}

# # Basic iteration .times
# 4.times { p 'hi' }

# 4.times do
#     p 'bye'
# end