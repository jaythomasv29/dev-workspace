# Methods

# Defining a method...
def take_order
    p 'What would you like to order?'
end

# take_order

def checkForOlder(person1, person2)
   if person1 > person2
       return 'person1 is older'
   elsif person2 > person1
       return 'person2 is older'
   else
       return 'they are the same age'
   end
end



p checkForOlder(21, 21)

# Calculate the average of two numbers and return the average as a number
def calc_average(num1, num2)
    return (num1 + num2) / 2.0
end

result = calc_average 9, 10
p result
