/*
=====User Stories=====
1. As a user, I want the function "sum" to take a list of numbers, add them all together, and give me back the final sum. It should work for lists with both an even and odd length.

2. As a user, I want the function "mean" to take a list of numbers, add them all together, divide by how many numbers there are in the list, and give back the answer. It should give back the average of the list. It should work for lists with both an even and odd length.

3. As a user, I want the function "median" to take a list of numbers, find the middle value (or median value), and give it back. You can assume the list is sorted from smallest to largest. It should work for lists with both an even and odd length.
*/
/*
=====Pseudocode=====

DECLARE a function called 'sum' that takes in an argument of an array of numbers called "numbers"
  DEFINE a new variable called "sum" and set its value equal to zero
  FOR each element in the array "numbers" do the following
    Add the value of the current element to the variable "sum"
  END the loop
  RETURN the value of "sum"
END the function called 'sum'

DECLARE a function called 'mean' that takes in an argument of an array of numbers called "numbers"
  DEFINE a new variable called "sum" and set its value equal to zero
  FOR each element in the array "numbers" do the following
    Add the value of the current element to the variable "sum"
  END the loop
  RETURN the value of "sum" divided by the number of elements in the "numbers" array
END the function called 'mean'

DECLARE a function called 'median' that takes in an argument of a sorted array of numbers called "numbers"
  IF the number of elements in the "numbers" array is odd
    RETURN the value of the element in the exact middle of the "numbers" array
  ELSE
    RETURN the value of adding the two middle elements of the array and divide that sum by two
  END the conditional
END the function called 'median'
*/
