names = ['James', 'Jantira', 'Karena', 'Linda', 'Tom']
# p names

names << "Wanna" # adds to end of array
# p names

names[0] = 'Jamie' # reassign a value at specific index of the array
# p names


#looping through the array
# create a method that prints array called printArray that takes in array as argument and prints each value at each
def printArray(arr)
    i = 0
    while i < arr.length
        p arr[i]
        i+=1
    end
end
printArray(names)