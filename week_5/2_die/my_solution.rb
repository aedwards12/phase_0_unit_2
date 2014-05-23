# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: object of class Die with one parameter
# Output: number od sides and return a letter
# Steps:
# make an if statement to determine if labels is empty. If yes raise an ArgumentError
# return size of label array in method sides
# return letters of Die. if size of die is 1 return 1 letter
# 3. Initial Solution

class Die
  def initialize(labels)
  	puts labels
  	if labels.empty?
  		raise ArgumentError, 'sides must be a positive number'
  	else 
  	@labels = labels
  	end	
  end

  def sides
  	puts "entered this method"
  	@labels.length 
  end

  def roll
  	puts "the size is"
    puts @labels.length
  	if @labels.length == 1
  		puts "entering here"
  		@labels[0]
  	else 
  		 @labels.sort.flatten
  		
  	end	
  end
end

# 4. Refactored Solution

=begin

def initialize(labels)
  	puts labels
  	if labels.empty?
  		raise ArgumentError, 'sides must be a positive number'
  	else 
  	@labels = labels
  	end	
  end

  def sides
  	@labels.length 
  end

  def roll
  	if this.sides() == 1
  		@labels[0]

  	else @labels.length >= 10000
  		 @labels.sort!
  		 @labels
  	end	
  end
end
=end



# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
