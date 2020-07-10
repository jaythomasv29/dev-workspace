const cardData = [{
    network: 'Visa',       // card issuer (network)
    prefixes: ['4'],	 // beginning digits
    lengths: [13, 16, 19]  // lengths of card numbers
  },{
    network: 'Mastercard',
    prefixes: ['51', '52', '53', '54', '55'],
    lengths: [16]
  },{
    network: 'American Express',
    prefixes: ['34', '37'],
    lengths: [15]
  },{
    network: 'Diner\'s Club',
    prefixes: ['38', '39'],
    lengths: [14]
  }];

// const cardNumber = 343456789012345
//parameters must be a string
const detectNetwork = (cardNumber, cardData) => {
    const firstDigit = cardNumber[0]  //get first digit
    const firstTwoDigits = (String(cardNumber).slice(0,2)) //get first two digits
    const len = Number(String(cardNumber).length)  //length as a number to match cardData object
    let networkResult = null
    switch(true){
        //Visa case
        case firstDigit == 4 && cardData[0].lengths.includes(len):
        networkResult = cardData[0].network
        break;
        //Mastercard case
        case cardData[1].prefixes.includes(firstTwoDigits) && cardData[1].lengths[0] == (len):
        networkResult = cardData[1].network
        break;
        //American Express case
        case cardData[2].lengths[0] == 15 && cardData[2].prefixes.includes(firstTwoDigits):
        networkResult = cardData[2].network
        break;
        //Diner's Club case
        case cardData[3].lengths[0] == 14 && cardData[3].prefixes.includes(firstTwoDigits):
        networkResult = cardData[3].network
        break;
        default: networkResult = undefined
        
    }
    return networkResult

}
//arguments are a 'string'
//American Express
const networkAmex = detectNetwork('343456789012345', cardData);
//Visa
const networkVisa = detectNetwork('4999999999999999921', cardData)
//MasterCard
const networkMaster = detectNetwork('5512234567890932', cardData)
// Diner's Club
const networkDiner = detectNetwork('390909090909', cardData)

console.log(networkAmex, networkVisa, networkMaster, networkDiner)