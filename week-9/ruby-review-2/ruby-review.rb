# Create a Car Class from User Stories


# I worked on this challenge [by myself].
# START Nov 8, 2015 10:19 AM
# END Nov 8, 2015 1:45 PM

# 2. Pseudocode
=begin
DEFINE a class called "Car"
  DEFINE an initialize method that takes two string arguments called "model" and "colour"
    DEFINE an instance variable called "@model" and set it to the value of the "model" argument
    DEFINE an instance variable called "@colour" and set it to the value of the "colour" argument
    DEFINE an instance variable called "@speed" and set it to 0
    DEFINE an instance variable called "@destination_distance" and set it to 0
    DEFINE an instance variable called "@traveled_distance" and set it to 0
    DEFINE an instance variable called "@direction" and set it to "North"
    DEFINE an instance variable called "@pizzas" and set it to a new empty array
  END

  DEFINE a method called "drive" that takes in two arguments: a string called "distance" and an integer called "speed"
    Call the "setDistance" method passing in the "distance" argument
    Increase the "@traveled_distance" variable by the "distance" argument
    If the "speed" argument that is being passsed in is greater than the "@speed", call the "accelerate" method passing in the "speed" argument, if it is lesser than the "@speed" then call the "decelerate" method passing in the "speed" argument, otherwise do not do anything
  END

  DEFINE a method called "accelerate" that takes in an integer argument called "speed"
    Set "@speed" to the "speed" argument
    Print out: "Increased speed to [speed] mph."
  END

  DEFINE a method called "decelerate" that takes in an integer argument called "speed"
    Set "@speed" to the "speed" argument
    Print out: "Decreased speed to [speed] mph."
  END

  DEFINE a method called "stop"
    Set "@speed" to 0
    Print out: "Stopped the car."
  END

  DEFINE a method called "turnLeft"
    When "@direction" is equal to "North" set "@direction" to "West"
    When "@direction" is equal to "East" set "@direction" to "North"
    When "@direction" is equal to "South" set "@direction" to "East"
    When "@direction" is equal to "West" set "@direction" to "South"
    Print out: "Turned Left. Now heading [direction]"
  END

  DEFINE a method called "turnRight"
    When "@direction" is equal to "North" set "@direction" to "East"
    When "@direction" is equal to "East" set "@direction" to "South"
    When "@direction" is equal to "South" set "@direction" to "West"
    When "@direction" is equal to "West" set "@direction" to "North"
    Print out: "Turned Right. Now heading [direction]."
  END

  DEFINE a method called "setDistance" that takes in an integer argument called "miles"
    Set "@destination_distance" to the value of "miles"
    Print out: "Distance to the destination is # miles."
  END

  DEFINE a method called "checkSpeed"
    Print out: "Your current speed is # mph."
  END

  DEFINE a method called "checkDistanceTraveled"
    Print out: "You have traveled # miles."
  END

  DEFINE a method called "addPizza" that takes in a string argument called "type"
    Create a new Pizza object passing in the "type" and add it to the "@pizzas" array
    Print out: "Added a [Pizza type] pizza for delivery."
  END

  DEFINE a method called "deliverPizza"
    Remove the first Pizza object from the @pizzas array
    Print out: "[Pizza type] pizza delivered."
  END
END

DEFINE a new class called "Pizza"
  DEFINE an initialize method that takes in a string argument called "type"
    DEFINE an instance variable called "@type" and set it to the value of the argument "type"
    DEFINE an instance variable called  "@size" and set it to the value of return value of the "randomSize" method
  END

  DEFINE a method called "randomSize"
    DEFINE an array called "sizes" with the values "Small", "Medium", and "Large"
    Set "@size" equal to a random selection of of the sizes in the "sizes" array
  END

  DEFINE a method called "getSize"
    Print out: "The size of the pizza is [size]."
  END
END
=end
# 3. Initial Solution
=begin
class Car
  attr_reader :speed, :direction, :destination_distance, :pizzas

  def initialize (model, colour)
    @model = model
    @colour = colour
    @speed = 0
    @destination_distance = 0
    @traveled_distance = 0
    @direction = "North"
    @pizzas = Array.new
  end

  def drive (distance, speed)
    setDistance(distance)
    @traveled_distance += distance
    speed > @speed ? accelerate(speed) : speed < @speed ? decelerate(speed) : ""
  end

  def accelerate (speed)
    @speed = speed
    puts "Increased speed to #{speed} mph."
  end

  def decelerate (speed)
    @speed = speed
    puts "Decreased speed to #{speed} mph."
  end

  def stop
    @speed = 0
    puts "Stopped the car."
  end

  def turnLeft
    case @direction
    when "North"
      @direction = "West"
    when "East"
      @direction = "North"
    when "South"
      @direction = "East"
    else
      @direction = "South"
    end
    puts "Turned Left. Now heading #{@direction}."
  end

  def turnRight
    case @direction
    when "North"
      @direction = "East"
    when "East"
      @direction = "South"
    when "South"
      @direction = "West"
    else
      @direction = "North"
    end
    puts "Turned Right. Now heading #{@direction}."
  end

  def setDistance (miles)
    @destination_distance = miles
    puts "Distance to the destination is #{@destination_distance}."
  end

  def checkSpeed
    puts "Your current speed is #{@speed} mph."
  end

  def checkDistanceTraveled
    puts "You have traveled #{@traveled_distance} miles."
  end

  def addPizza (type)
    @pizzas.push(Pizza.new(type))
    puts "Added a " + @pizzas.last.type + " pizza for delivery."
  end

  def deliverPizza
    puts @pizzas.shift.type + " pizza delivered."
  end

end

class Pizza
  attr_reader :type, :size
  def initialize (type)
    @type = type
    @size = randomSize
  end

  def randomSize
    sizes = ["Small", "Medium", "Large"]
    sizes.sample
  end

  def getSize
    puts "The pizza size is #{size}."
  end
end
=end
# 4. Refactored Solution

class Pizza
  attr_reader :type, :size
  def initialize (type)
    @type = type
    @size = ["Small", "Medium", "Large"].sample
  end

  def getSize
    puts "The pizza size is #{size}."
  end
end

class Car
  attr_reader :speed, :direction, :destination_distance, :pizzas

  def initialize (model, colour)
    @model = model
    @colour = colour
    @speed = 0
    @destination_distance = 0
    @traveled_distance = 0
    @direction = "North"
    @directions = ["North","East","South","West"]
    @pizzas = Array.new
  end

  def drive (distance, speed)
    setDistance(distance)
    @traveled_distance += distance
    speed > @speed ? accelerate(speed) : speed < @speed ? decelerate(speed) : ""
  end

  def accelerate (speed)
    @speed = speed
    puts "Increased speed to #{speed} mph."
  end

  def decelerate (speed)
    @speed = speed
    puts "Decreased speed to #{speed} mph."
  end

  def stop
    @speed = 0
    puts "Stopped the car."
  end

  def turnLeft
    currentIndex = @directions.index(@direction)
    @direction = @directions[currentIndex - 1]
    puts "Turned Left. Now heading #{@direction}."
  end

  def turnRight
    currentIndex = @directions.index(@direction)
    currentIndex == 3 ? @direction = @directions[0] : @direction = @directions[currentIndex + 1]
    puts "Turned Right. Now heading #{@direction}."
  end

  def setDistance (miles)
    @destination_distance = miles
    puts "Distance to the destination is #{@destination_distance}."
  end

  def checkSpeed
    puts "Your current speed is #{@speed}"
  end

  def checkDistanceTraveled
    puts "You have traveled #{@traveled_distance} miles."
  end

  def addPizza (type)
    @pizzas.push(Pizza.new(type))
    puts "Added a " + @pizzas.last.type + " pizza for delivery."
  end

  def deliverPizza
    puts @pizzas.shift.type + " pizza delivered."
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

# Create a new car of your desired model and type
pizza = Car.new("Short Bus", "Orange")

# Drive .25 miles (speed limit is 25 mph)
delivery.drive(0.25, 25)

# At the stop sign, turn right
delivery.stop
delivery.turnRight

# Drive 1.5 miles (speed limit is 35 mph)
delivery.drive(1.5, 35)

# At the school zone, check your speed
delivery.checkSpeed

# Slow down to speed limit 15 mph
delivery.decelerate(15)

# Drive .25 miles more miles
delivery.drive(0.25, delivery.speed)

# At the stop sign, turn left
delivery.stop
delivery.turnLeft

# Drive 1.4 miles (speed limit is 35 mph)
delivery.drive(1.4, 35)

# Stop at your destination
delivery.stop

# Log your total distance travelled
delivery.checkDistanceTraveled

delivery.addPizza("Pepperoni")
delivery.pizzas.first.getSize
delivery.addPizza("Ham")
delivery.addPizza("Cheese")
delivery.deliverPizza
delivery.deliverPizza
delivery.deliverPizza

# 5. Reflection

- What concepts did you review in this challenge?
    I reviewed building new classes, using the attr properties, combining two objects of my creation

- What is still confusing to you about Ruby?
    I can't think of anything that is still confusing to me at this point.

- What are you going to study to get more prepared for Phase 1?
    Just keep working on different challenges