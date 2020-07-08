function sumDigits(num) {
    // your code here
    const arr = String(-316).split("")
  let total = 0
  for(let i = 0; i<arr.length; i++){
      if((arr[i]) =='-'){
          let numStr = Number(`${arr[i]}${arr[i+1]}`)
          total+=numStr
          i+=2
      }
      for(a of arr){
      total+=Number(arr[i])
      }
    }
    return total
}
  

function sumDigits(num){
    let total = 0
    const arr = String(num).split("")
    if(num >= 0){
        for(num of arr){
        total+=Number(num)
    } // end for
    return total
} if(num < 0) {
    for(let i = 0; i<=arr.length; i++){
        if(arr[i]== '-'){
            let numStr = Number(`${arr[i]}${arr[i+1]}`)
            console.log(numStr)
            total+=numStr
            i++
        } else {
            total+=Number(arr[i])
            i++
        }

    } // end for
    return total
}
}
sumDigits(-316)
sumDigits(1148)