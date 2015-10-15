# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash [:outer] [:inner] ["almost"] [3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data [:array] [1] [:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|item| item += 5 }
  else
     element += 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def change_name (array)
  array.map! do |element|
    if element.kind_of?(Array)
      change_name(element)
    else
      element += "ly"
    end
  end
  array
end

p change_name(startup_names)

#  Reflection
=begin
- What are some general rules you can apply to nested arrays?
    You can print out the value of the array and all the values of the sub arrays by using the puts command. When using bracket notation to access sub arrays you you place the square brackets beside each other for each level of sub array.

- What are some ways you can iterate over nested arrays?
    Ways you can iterate over nested arrays include using the each loop and checking to see whether the value returned is an array and performing another each loop. The most elegant solution, in my opinion, is to use a recursive function that continues to call itself as long as a new sub array is found.

- Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
    Outside of the each method (which wasn't new to us) We ended up creating our own method that called on itself when a new array was found.
=end