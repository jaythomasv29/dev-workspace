def doubler(arr)
    i = 0 # initial index
    doubled = [] # empty array
    while i < arr.length
        doubled[i] = arr[i] * 2
        i+=1
    end
    return doubled # return the doubled array
end

p doubler([2,4,6,8])