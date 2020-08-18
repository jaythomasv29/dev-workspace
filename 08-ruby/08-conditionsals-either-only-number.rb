def either_or_by_5_or_3(num)
    # If divisible by 5 OR 3 AND NOT divisible by BOTH 5 and 3
    if (num % 5 == 0 || num % 3 == 0) && !(num % 5 == 0 && num % 3 == 0)
        return true
    else
        return false
    end
end


def either_or(num)
    if (num % 3 == 0 && num % 5 != 0) || (num % 3 != 0 && num % 5 == 0)
        return true
    end
    return false
end

p either_or_by_5_or_3(9)
p either_or_by_5_or_3(20)
p either_or_by_5_or_3(7)
p either_or_by_5_or_3(15)
p either_or_by_5_or_3(30)
p "NEXT METHOD"
p either_or(9)
p either_or(20)
p either_or(7)
p either_or(15)
p either_or(30)