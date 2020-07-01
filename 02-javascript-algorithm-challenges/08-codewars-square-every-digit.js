const sq = (num)=> {
    let acc = null
    let stringNum = (num.toString().split(""))
    let squaredEveryDigitArr = []
    for(a of stringNum){
        let result = Math.pow(Number(a), 2)
        
        squaredEveryDigitArr.push(result.toString())
    }
    return Number(squaredEveryDigitArr.join(""))
}
sq(9119) //811181



sq(9)