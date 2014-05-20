# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


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
  # Make sure you define the other required methods, too
end






# 1. DRIVER TESTS GO BELOW THIS LINE

game_1 = GuessingGame.new(10)
game_1.guess(20)
game_1.guess(3)
game_1.solved?()

game_1.guess(10)




# 5. Reflection 
