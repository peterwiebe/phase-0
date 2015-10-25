// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var fun = 10 + 2 - 3;

prompt("What is your favourite food?");
alert("Hey! That is my favourite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
function A(){
  for (var i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      console.log("FizzBuzz");
    }
    else if (i % 3 == 0) {
      console.log("Fizz");
    }
    else if (i % 5 == 0) {
      console.log("Buzz");
    }
    else {
      console.log(i);
    };
  };
}

A();


// Functions

// Complete the `minimum` exercise.
function min(num1, num2) {
  return num1 > num2 ? num2 : num1
}

console.log(min(1,2));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name : "Pedro",
  age : 55,
  "favourite foods" : ["oranges", "kale", "pears"],
  quirk : "avid floater"
}