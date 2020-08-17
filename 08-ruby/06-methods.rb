# Methods

# Defining a method...
def take_order
    p 'What would you like to order?'
end

# take_order

def checkForOlder(person1, person2)
   if person1 > person2
       p 'person1 is older'
   elsif person2 > person1
       p 'person2 is older'
   else
       p 'they are the same age'
   end
end

checkForOlder(21, 21)