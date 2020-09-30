# range enumerables
# (start..end).each - iterate from start to end inclusive
# (start...end).each - iterate from start to end (excluding end)

arr = ["a", "b", "c"]
arr.each { |ele| p ele }

# (1..10).each { |num| p num } # 1 to 10
# (1...6).each { |num| p num } # 1 to 5 (excludes 6)

# Write a method fizzBuzz that takes in an number max and returns an array containing all
# numbers less than max that are divisible by 3 or 5, but NOT BOTH

def fizzBuzz(maxNum)
  result = []
  # loop through with logic
  (1...maxNum).each do |num|
    if num % 3 == 0 && num % 5 != 0 # if divisible by 3 only AND not divisible by 5
      result.push(num)
    elsif num % 5 == 0 && num % 3 != 0 # if divisible by 5 only AND not divisible by 3
      result.push(num)
    end
  end
  return result
end

p fizzBuzz(20)
