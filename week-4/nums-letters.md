#4.2 Numbers, Letters, and Variable Assignment

* **What does puts do?**

A puts prints a string to the screen with a new line below it.

* **What is an integer? What is a float?**

An integer is a whole number (without decimals). A float however, or otherwise known as a floating point number, is a number with decimals.

* **What is the difference between float and integer division? How would explain the differences to someone who doesn't know anything about programming?**

The difference between is that when dividing with floats you will get the appropriate fraction (up to a point). So in the case of 1.0 / 2.0 the result would return 0.5 - a floating point number. If we did the same division without floats, in this case 1 / 2, the result would return 0 - an integer which is mathematically incorrect but correct in the terms of integers since the result is an integer. 

Hours in a year
```ruby
p 365*24
```

Minutes in a decade
```ruby
p 10*365*60*60
```

* **Reflection**

* **How does Ruby handle addition, subtraction, multiplication, and division of numbers?**

Ruby handles addition, subtraction, multiplication, and division like you would expect with the results you would expect except for maybe when you use division with integers. The results of division of integers rounds down to nearest integer.

* **What is the difference between integers and floats?**

The difference is that integers are numbers that do not include fractions of a number and floats do include fractions of a number.

* **What is the difference between integer and float division?**

The main difference between integer and float division is that float division will you give a mostly accurate result when giving a fractional result while integer division will give you the closest integer to the result rounded down.

* **What are strings? Why and when would you use them?**

Strings are the characters of programming languages. Strings can include letters, numbers, symbols, spaces, and punctuation. Strings can be completely empty with nothing in them or they can have lots of characters making up words, names, long paragraphs. You would want to use strings for many different things including to record information provided by the user, to print out instructions to a user, to allow a greater password complexity. The reason why we want to do this is so that human users can better understand what they need to do when using the program or create a profile for the program they are using to store and recall information at a later time.

* **What are local variables? Why and when would you use them?**

Local variables are variables that are available only to the current process that is being completed. For instance, if there is a specific method that needs to do some sort of calculation that method could create a local variable that only that method would have access to. Nothing outside of that method could access that variable inside the method.

* **How was this challenge? Did you get a good review of some of the basics?**

This challenge was fairly simple to do. The reflection took more time than the coding challenges. It is always good to practice the basics.