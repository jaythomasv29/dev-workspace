Write a function 'transformArrayToObject' 
which takes in an array of arrays, 
and returns an object with each pair of elements
 in the array as a key-value pair.

 var input = [['make', 'Ford'], ['model', 'Mustang'], ['year', 1964]];

 function transformEmployeeData(employeeData) {
    // your code here
    const filteredData = []
    for (i of input){ filteredData.push(Object.fromEntries(i))}
    console.log(filteredData)
  }

  transformEmployeeData