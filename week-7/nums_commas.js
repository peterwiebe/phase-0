// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Joe Marion.

// Pseudocode

// define method called separate_comma that takes in an integer as arg
// determine if number was less than 1000, if so return the number
// ELSE split the number into an array then reverse it
// create a counter variable of 3
// insert comma at the variable's index in a loop that also increments the counter variable
// reversed the array again and joined it
// returned the array.

// Initial Solution

// function separateComma(number) {
//   if (number < 1000) {
//     return String(number);
//   }
//   else {
//     var commaNumber = [];
//     commaNumber = String(number).split("").reverse();
//     for(var i = 3; i < commaNumber.length; i += 4) {
//       commaNumber.splice(i, 0, ",");
//     }
//   }
//   return commaNumber.reverse().join("");
// }

// Refactored Solution

function separateComma(number) {

  var commaNumber = String(number).split("").reverse();
    for(var i = 3; i < commaNumber.length; i += 4) {
      commaNumber.splice(i, 0, ",");
    }
  return commaNumber.reverse().join("");
}

console.log(separateComma(9007199254740991));
// Your Own Tests (OPTIONAL)


// Reflection
/*
- What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
    It was pretty easy to solve this problem in JavaScript. The approach was very similar.

- What did you learn about iterating over arrays in JavaScript?
    I learned that I could use the for loop which is really available in Ruby but something that I learned when I studied Java in the past.

- What was different about solving this problem in JavaScript?
    The usage of the for loop and how it is constructed.

- What built-in methods did you find to incorporate in your refactored solution?
    We used the built in methods from the beginning including split, reverse, join, splice, and length.
    */
