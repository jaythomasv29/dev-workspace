# method that starts at 1 and continuously adds each number including the max
# returns the total sum
def sum_nums(max)
    totalSum = 1 # initial sum
    i = 2 # initial index
    while(i <= max)
        totalSum += i
        i+=1
    end
return totalSum
end
p sum_nums(4)