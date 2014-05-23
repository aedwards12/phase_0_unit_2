# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: Object of class Guessgame with one parameter
# Output: Outputs the status of a guess. 
# Steps:
=begin

initialize object with the given parameter (answer) and a default instance variable @solved equal to false
define guess to return a symbol and string if guess is low, high, or correct.  
set the value of solved based on what the guess was. if incorrect guess should be set to false otherwise true 
make a new object of class GuessingGame
test the differect features of the game

=end

# 3. Initial Solution
=begin

class GuessingGame
	@@solved = false
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer 
    @solved = false
  end
  
  def guess(guess)
  	if guess < @answer
  		puts " answer is low"
  		@solved = false
  		:low
  	elsif guess > @answer
  		puts "answer is high"
  		@solved = false
  		:high
  	else
  		@solved = true
		:correct
  	end
  end

  def self.solved_to_true
  		@solved = true
  end

  def solved?
  	 	@solved	
  end 	
  # Make sure you define the other required methods, too
end

=end

# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer 
    @solved = false
  end
  
  def guess(guess)
  	if guess < @answer
  		puts " guess is low"
  		@solved = false
  		:low
  	elsif guess > @answer
  		puts "guess is high"
  		@solved = false
  		:high
  	else
  		puts "Congraduations you won"
  		@solved = true
		:correct
  	end
  end

  def solved?
  	 	@solved	
  end 	
end


# 1. DRIVER TESTS GO BELOW THIS LINE

game_1 = GuessingGame.new(10)
game_1.guess(20)
game_1.guess(3)
game_1.solved?()

game_1.guess(10)

# 5. Reflection 

=begin
This challenge was pretty straight forward. Actually I understood for once what todo. 
From the beginning.  I thought i could make a static variable @@solved of the class but 
then i realized that makes no sense because there could be multiple games going on at once. 
Which means the correct answer to the individuals persons game may give an improper value. 
I did have to research how to make a static variable and how to make a static member function 
which I’m sure will be helpful for the future.  I could use a static variable to keep track 
of how many people are playing the game or how many total guesses have been made. I feel confident 
in the dependencies of this challenge. =end


