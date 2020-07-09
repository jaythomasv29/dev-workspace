// Write a function called "transformEmployeeData" that transforms some employee data from one format to another.

// The argument will look like this:

var input = [
    [
        ['firstName', 'Joe'], ['lastName', 'Blow'], ['age', 42], ['role', 'clerk']
    ],
    [
        ['firstName', 'Mary'], ['lastName', 'Jenkins'], ['age', 36], ['role', 'manager']
    ]
];

// Return value should look like this
// [
//     {firstName: 'Joe', lastName: 'Blow', age: 42, role: 'clerk'},
//     {firstName: 'Mary', lastName: 'Jenkins', age: 36, role: 'manager'}
// ]

function transformEmployeeData(employeeData) {
    // your code here
    const filteredData = []
    for (i of employeeData){ filteredData.push(Object.fromEntries(i))}
    return (filteredData)
  }

  transformEmployeeData(input)