# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself ].

# 2. Pseudocode

# Input: a new object of class die with integer variable
# Output: outputs the number of sides & a random number 1 - number of sides for object
# Steps:
=begin

1.add and if statement that stores the number of sides. If the number is less than 1 raise and ArgumentError
2. return number of sides
3 return a random number between 1 and number of sides for that object
=end

# 3. Initial Solution
=begin

class Die
  def initialize(sides)
    
    if sides < 1
    	raise ArgumentError, 'sides must be a positive number'
    else
    	@sides = sides
    end
  end
  
  def sides
    # code goes here
   @sides
  end
  
  def roll
    # code goes here
    rand(@sides) + 1
  end
end

=end


# 4. Refactored Solution

class Die
  def initialize(sides)
    
    if sides < 1
    	raise ArgumentError, 'sides must be a positive number'
    else
    	@sides = sides
    end
  end
  
  def sides
    # code goes here
  @sides
  end
  
  def roll
    # code goes here
   rand(@sides) + 1
  end
end






# 1. DRIVER TESTS GO BELOW THIS LINE

my_die =  Die.new(30)
puts my_die.roll
puts  my_die.sides


#my_die = Die.new(0)

# 5. Reflection 
=begin
This challenge was fairly simple. I had to review how to initialize a class
object and store its instance variables correctly. I also had to Raise and 
ArgumentError, that was also new to me.  I feel confident with the dependencies
of this challenge.   This challenge was a nice intro to classes and objects. 
I didn’t need to refractor this solution because is was fairly straight forward. 
Right now i am unaware if there is better way to do it. 
=end
