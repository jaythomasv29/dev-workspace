var obj1 = {
    a: 1,
    b: 2
  };
  var obj2 = {
    b: 4,
    c: 3
  };

function extend(obj1, obj2) {
    for(x in obj2){
        
        if(obj1[x]==undefined){
            obj1[x] = obj2[x]
        }
    }
return obj1
}

extend(obj1, obj2)
