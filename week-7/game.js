// HUMAN OBJECT ---------------------------
var human = {
  name: "human",
  wins: 0,
  character: "X"
};

// COMPUTER OBJECT ---------------------------
var computer = {
  name: "computer",
  wins: 0,
  character: "O",

  computerPick: function() {
    var columns = ["A", "B", "C"];
    var spot = columns[Math.floor(Math.random() * 3)] + Math.floor(Math.random() * 3);
    return spot;
  }
};


// GAME OBJECT ---------------------------
var ticTacToe = {
  board: [["-","-","-"],["-","-","-"],["-","-","-"]],

  pick: function(location, player) {
    var coordinates = location.split("");

    coordinates[0] === "A" ? coordinates[0] = 0 : coordinates[0] === "B" ? coordinates[0] = 1 : coordinates[0] = 2;

    coordinates[1] === "1" ? coordinates[1] = 0 : coordinates[1] === "2" ? coordinates[1] = 1 : coordinates[1] = 2;
//     console.log("I picked " + coordinates[0] + coordinates[1] + " or location " + location);
    this.updateLocation(coordinates, player);
  },

  updateLocation: function(location, player) {
    if (this.board[location[0]][location[1]] !== "-" && player.name === "human") {
      console.log("That location is taken. Please pick another location.")
    }
    else {
      this.board[location[0]][location[1]] = player.character

      this.checkWinner(player);
    }
  },

  // Pass in the player's character to see if the last play won the game. Returns True/False
  checkWinner: function(player) {
    var character = player.character;
    var winMessage = player.name + " has won the game! \nA new game begins: "
    var count = 0;
    var result = false;

    for (var m = 0; m < this.board.length; m++) {
      for (var n = 0; n < this.board[m].length; n++) {
        this.board[m][n] === character ? count += 1 : count = 0;
      }
      count === 3 ? console.log(winMessage) : count = 0;
      player.wins += 1;
    };

    for (var i = 0; i < this.board.length; i++) {
      for (var j = 0; j < this.board[i].length; j++) {
        this.board[j][i] === character ? count += 1 : count = 0;
      }
      count === 3 ? console.log(winMessage) : count = 0;
      player.wins += 1;
    };

    if (this.board[0][0] === character && this.board[1][1] === character && this.board[2][2] === character) {
      console.log(winMessage);
      player.wins += 1;
    }
    else if (this.board[0][2] === character && this.board[1][1] === character && this.board[2][0] === character) {
      console.log(winMessage);
      player.wins += 1;
    }
    else  {
      console.log("Next player's turn");
      this.printBoard();
    };
  },

  printBoard: function() {
    var printedBoard = "   A   B   C\n\n";
    console.log();
    for (var b = 0; b < this.board.length; b++) {
      printedBoard += (b+1).toString() + " "
      for (var a = 0; a < this.board.length; a++) {
        printedBoard += " " + this.board[a][b] + " ";
        a === 2 ? printedBoard : printedBoard += "|";
      }
      printedBoard += "\n";
      b === 2 ? printedBoard : printedBoard += "  -----------\n";
    }
    console.log(printedBoard);
  },

  newGame: function() {
    this.printBoard();
    for (var aa = 0; aa < this.board.length; aa++) {
      for (var bb = 0; bb < this.board[aa].length; bb++) {
        this.board[aa][bb] = "-"
      }
    }
  }


};
// FIX Human selection
ticTacToe.pick("A1", human);
ticTacToe.pick(computer.computerPick(), computer);
ticTacToe.pick("C3", human);
ticTacToe.pick(computer.computerPick(), computer);
ticTacToe.pick("B2", human);
ticTacToe.pick(computer.computerPick(), computer);
// ticTacToe.pick("A1", human);
// ticTacToe.pick(computer.computerPick(), computer);
// ticTacToe.pick("A1", human);
// ticTacToe.pick(computer.computerPick(), computer);


// ### REFLECTION ###
/*
- What was the most difficult part of this challenge?
    Debugging JavaScript was the most difficult. I had errors but it was hard to figure out where they were coming from.

- What did you learn about creating objects and functions that interact with one another?
    I learned how to create a function inside of an object and how to use the this keyword to indicate variable selection. I definitely prefer how you define methods inside of objects in Ruby over JavaScript.

- Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
    I didn't end up refactoring because I ran out of time on my initial solution. If I had more time I would go through to see if there are any that I could use.

- How can you access and manipulate properties of objects?
    I use the dot notation to access properties. For example: player.wins returns the number of wins that player has. You can increment it by typing: player.wins += 1;.
    */