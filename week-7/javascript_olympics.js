 // JavaScript Olympics

// I paired [with: Kyle Smith] on this challenge.

// This challenge took me [#] hours.
// START 6:15PM Oct 23, 2015
// END 7:30PM Oct 23, 2015


// Warm Up


// Bulk Up

var athlete = function(array){

  for (var i = 0; i < array.length; i ++){
    array[i].win = array[i].name + " won the " + array[i].event;
    console.log(array[i].win);}
};

athlete([{name: "Sarah Hughes", event: "Ladies' Singles"},{name: "Michael Phelps", event: "Men's Free"}]);


// Jumble your words

var reverse_string = function(string){
  return string.split("").reverse().join("");
}

console.log(reverse_string("JavaScript"));

// 2,4,6,8

var evens = function(array){
  var new_array = [];
  for (var j = 0; j< array.length; j ++){
      if (array[j] % 2 === 0){
        new_array.push(array[j]);
      }
    }

  console.log(new_array);
}

evens([1,2,3,4,5,6,7,8,8,7,6,5,4])

// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);

// Reflection

// - What JavaScript knowledge did you solidify in this challenge?
//     Being that this was the first thing that I have done for the assignments  I feel as though I have solidified my knowledge of basic syntax rules as well as how to create a 'class' in JavaScript

// - What are constructor functions?
//     Constructor functions are similar to Ruby classes. They provide a template to create instances of new objects that you define.

// - How are constructors different from Ruby classes (in your research)?
//     The following are a few ways they differ:
//       - Constructors are functions, and functions are objects in JavaScript
//       - JavaScript new is a keyword when you instantiate a new object whereas new is a method of the Class object that each Class inherits
//       - As mentioned earlier, when defining a new Ruby Class, that Class inherits from the built in Ruby Class.
//       - Constructors initialize instance variables for each instantiation by using the this keyword
//       - Ruby initializes variables in a initialize method and uses @ to signify instance variables