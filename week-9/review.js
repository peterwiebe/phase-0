

// PSEUDOCODE
/*
DEFINE a class called "GuessingGame" that takes an integer called "answer" as an argument
  DEFINE an instance variable called "correctness" that is set to false
  DEFINE a function called "solved" that takes in no arguments and returns the value of the of "correctness"
  END
  DEFINE a function called "guess" that takes in an integer called "number" as an argument
    Set the value of "correctness" to false
    IF "number" is greater than "answer" then print out a string high, if the "number" less than the "answer" then print out a string low, otherwise print out a string correct and set the value of "correctness" to true
  END
END
*/

// INITIAL SOLUTION
/*
function GuessingGame (answer) {
  this.correctness = false;
  this.solved = function(){
    console.log(this.correctness)
  };
  this.guess = function(number) {
    this.correctness = false;
    number > answer ? console.log("high") : number < answer ? console.log("low") : (this.correctness = true, console.log("correct"))
  };

}
*/

// REFACTORED SOLUTION

function GuessingGame (answer) {
  this.correctness = false;
  this.solved = function(){
    console.log(this.correctness)
  };
  this.guess = function(number) {
    this.correctness = false;
    if number > answer {
      console.log("high")
    }
    else if number < answer {
      console.log("low")
    }
    else {
      this.correctness = true;
      console.log("correct");
    }
  };

}

// REFLECTION
/*
- What concepts did you solidify in working on this challenge?
    I solidified my knowledge on ternaries and how to combine multiple statements into one result of the ternary.

- What was the most difficult part of this challenge?
    The most difficult part of the challenge was testing, it just took more time to accomplish than using Ruby rspec tests.

- Did you solve the problem in a new way this time?
    The solution is the same more or less.

- Was your pseudocode different from the Ruby version? What was the same and what was different?
    It was mostly the same, the only differences were between the differences in syntax between Ruby and JavaScript. JavaScript does not have symbols like Ruby does, JavaScript does not have the accessor attributes like Ruby does either.
*/