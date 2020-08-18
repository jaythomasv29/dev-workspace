# Defining method with parameter with while loop inside
def repeatHelloWhile(count)
    counter = 1
    while counter <= count
        p "hello #{counter}"
        counter+=1
    end
    p 'end of while'
end
# While loop method call with argument
repeatHelloWhile(10)

# Defining method with parameter with for loop inside
def repeatByeFor(count)
    for i in 1..count do
        p "Bye #{i}"
    end     
end

# For loop method call with argument
repeatByeFor(10)

def printArray(arr)
    p arr
    for i in arr do
        p i
    end
end
printArray([1,2,3])

def loopDown(num) # Count down to 0
    p 'Countdown begins now..!'
    while (num >= 0)
        p num
        num -=1
    end
    p 'The ship has launched...! BLAST OFF!'
end
loopDown(3)

# Write a method that takes in a string and prints each character - WHILE LOOP
def printString(string)
    i = 0
    while i < string.length
        p string[i]
        i+=1
    end
end
printString('james')
# Write a method that takes in a string and prints each character - FOR LOOP
def printString2(string)
    for value in string do
        p string[value]
    end
end
printString2('Jantira')