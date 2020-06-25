function format(s) {
  let wordArr = s.split("");
  let accumArr = [];
  for (let i = 0; i < wordArr.length; i++) {
    let UpperCasedletter = wordArr[i].toUpperCase();
    accumArr.push(UpperCasedletter);
    for (let j = 0; j < i; j++) {
      accumArr.push(wordArr[i].toLowerCase());
    }
  }
  return accumArr;
}

function accum(str) {
  let formatString = format(str);
  console.log(formatString);
  let correctString = [];
  correctString.push(`${formatString[0]}-`);
  for (let i = 1; i <= formatString.length; i++) {
    let nextPos = formatString[i + 1];
    if (String(formatString[i]) != String(nextPos)) {
      if (i == formatString.length - 1) {
        correctString.push(formatString[i]);
      } else {
        correctString.push(formatString[i]);
        correctString.push("-");
      }
    } else {
      correctString.push(formatString[i]);
    }
  }
  return correctString.join("");
}
accum("HbideVbxncC");

function format(s) {
  let wordArr = s.split("");
  let accumArr = [];
  for (let i = 0; i < wordArr.length; i++) {
    let UpperCasedletter = wordArr[i].toUpperCase();
    accumArr.push(UpperCasedletter);
    if (i == 0) {
      accumArr.push("-");
    }
    for (let j = 0; j < i; j++) {
      accumArr.push(wordArr[i].toLowerCase());
      if (j == i - 1) {
        accumArr.push("-");
      }
    }
  }
  accumArr.pop();
  return accumArr.join("");
}

format("HbideVbxncC");

function accum(s) {
     s.split("").map(function(currentVal, index, arr) {
        return currentVal.toUpperCase() + currentVal.toLowerCase().repeat(index)
  }).join('-');
}

accum('gekki')

function formatFunc(s) {
  return;
}

function accum(s) {
    return s.split('').map((c, i) => (c.toUpperCase() + c.toLowerCase().repeat(i))).join('-');
  }
  