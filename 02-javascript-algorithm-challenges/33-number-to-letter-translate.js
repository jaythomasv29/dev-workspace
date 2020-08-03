const translateNums = (num) => {
    let str = ''  //empty string
    for (const n of String(num)) {
        switch(true){
            case n == 1:
            str+='one '
            break;
            case n == 2:
            str+='two '
            break;
            case n == 3:
            str+='three '
            break;
            case n == 4:
            str+='four '
            break;
            case n == 5:
            str+='five '
            break;
            case n == 6:
            str+='six '
            break;
            case n == 7:
            str+='seven '
            break;
            case n == 8:
            str+='eight '
            break;
            case n == 9:
            str+='nine '
            break;
            default:
            console.log('no such number')
        }

    }
    return str.trimEnd()
}

translateNums(123)