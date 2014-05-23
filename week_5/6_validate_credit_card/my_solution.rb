# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(card)
		puts card
		if card > 16 || card < 16
			raise ArgumentError, "Invalid card digit" 
		else	
			@card = card
		end
	end

	def check_card
		p "inside checksum" 
		sum = 0
		digit_array= []
		new_array= []
		p @cards
		digit_array = @card.to_s.chars.map(&:to_i)
		p digit_array = @card.to_s.chars.map(&:to_i)
		digit_array.each{|d| 
			if d.odd? == true
				d = d * 2
				if d > 9 
					d.to_s.chars.map(&:to_i)
					new_array << d[0]
					new_array << d[1]
				else
					new_array << d
				end
			else
				new_array << d
			end
					
		}
		new_array.each { |d|
			sum += 0
		}

		if sum % 10 == 0 
			return true
		else
			return false
		end	
	end

end



# 4. Refactored Solution





# 1. DRIVER TESTS GO BELOW THIS LINE

#my_card = CreditCard.new(22222)
#my_card2 = CreditCard.new(4408041234567893)
#puts my_card2.check_card




# 5. Reflection 
