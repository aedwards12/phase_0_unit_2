# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a credit card number of length 16
# Output: true of false if the credit card is valid or not
# Steps:
=begin
initialize the CreditCard with the paramenter given then run an ArgumentError to catch bad paramenter passed into into
define the check_card method
iterate through array if index is even push onto new array else at every odd index doube the value,
if new  value is great than 9 break it up into 2 seperate digits 
for example "12 = '1' '2' " then push those 2 new digits onto the array 
iterate over the new array and add up all the values
if the total divides by ten evenly return true else return false
=end


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(card)
	@card = card
 	raise ArgumentError, "Card Invalid length" unless @card === 16

	puts card.size.to_s + " is my card size"
			
	end

	def check_card
		#p "inside checksum" 
		sum = 0
		digit_array= []
		new_array= []
		#p @cards
		digit_array = @card.to_s.chars.map(&:to_i)
		#p digit_array = @card.to_s.chars.map(&:to_i)
		digit_array.each_with_index{|d, index| 
			if index.odd? == true
				#puts d.to_s + "odd digit"
				d = d * 2
				#puts d.to_s = " odd digit * 2 "
				if d > 9 
					#puts d.to_s + "new array d"

					#p d.to_s.chars.map(&:to_i)
					new_array << d.to_s.chars.map(&:to_i)[0]
					#p d.to_s.chars.map(&:to_i)[0].to_s
					new_array << d.to_s.chars.map(&:to_i)[1]
					#p  d.to_s.chars.map(&:to_i)[1].to_s
					
				else
					new_array << d
					#p new_array.to_s + "new array"

				end
			else
				new_array << d
			end
					
		}
		#puts new_array.to_s + "new array"
		new_array.each { |d|
			sum += d
		}
		puts sum.to_s + " sum"

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
=begin

x=4408041234567893
puts x
card = CreditCard.new(x)
puts card.check_card
=end




# 5. Reflection 
=begin

I am having a difficult time with this challenge. I wrote my own code. I got each task to pass
individually but not all together. When i get the ArgumentError task to pass the return true or false tasks
fail. When I get the true or false tasks to pass the ArgumentError tasks fail. I feel fairly confident with the 
Learning Competencies of this challenge. I need to refactor this im sure there is an easier way to do this. For 
reason my code keep returning 8 when i pass a 16 digit credit card number into it. 

=end
