# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].

#Anthony Edwards Jr
# Original Solution
# forked from S-Loar on github

# PSEUDOCODE

# Input would be a 16 digit credit card number
# Output would be true or false
# Initialize class CreditCard
# Write a method that checks card based on Luhn algorithm which follows these steps:
# 1) Starting with the second to last digit, double every other digit until you reach the first digit
# 2) Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0)
# 3) If the total is a multiple of ten, you have received a valid credit card number!

class CreditCard # Creating class credit card

  def initialize(card_number) # defining a method called initialize that takes a card number as an arguement
  	if card_number.to_s.length != 16 then
  	  raise ArgumentError.new("The credit card number must have 16 digits.")# if card number length is not 16 digits exactly rais an arguement error
  	end
  	@card_number = card_number # initialize a variable instance of Credit card
  end 

  def check_card # defining a method called check_card with 2 variables sum , digit_count both equal to zero
  	sum = 0
  	digit_count = 0
  	numbers = @card_number.to_s.reverse # changes @card_number to a string and reverse the order
  	
  	numbers.each_char { |digit| # iterate though each char of string numbers 
  	  digit = digit.to_i  	# each char with be turned into and int
  	  
  	  if digit_count.odd? # check if digit_count is odd, if it is multiply it by 2
  	  	digit *= 2
  	  end

  	  if digit >= 10  # if digit is great or equal to 10 then digit will be equal to digit - 10  + 1 
  	  	digit = (digit - 10) + 1
  	  end 

  	  sum += digit # adding the new value of digit to sum
  	  digit_count += 1  # add 1 to digit_count with each iteration. 
  	   
  	} # closed the each_char block

  	(sum % 10).zero?  # asks if result of numbers.each_char stored in sum % ten is equal to zero

  end
  
end


# Refactored Solution
# This code looks very neat, clean and easy to read. We don't see ways to make this better since there is no repetition
# 


# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

card = CreditCard.new(4408041234567893)

assert{ card.check_card == true }

assert{
		card2 = CreditCard.new(4408041234567893)
		card2.check_card == true
			}


# Reflection 

