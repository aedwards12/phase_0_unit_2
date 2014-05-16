# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? an integer
# What is the output? (i.e. What should the code return?) a string value of the interger
# What are the steps needed to solve the problem? determine the value of the digit, if digit falls between a certain value perfome a specific operation and return its string value with commas in the proper place. 

# 2. Initial Solution

=begin
def separate_comma(digit)

	if digit > 0 and digit < 999
		return digit.to_s
	elsif digit >= 1000 and digit < 999999
		return digit.to_s.reverse.insert(3, ',').reverse 
	elsif digit >= 1000000 and digit < 999999999
		return digit.to_s.reverse.insert(3, ',').insert(7, ',').reverse 		
    end   	
end
=end

# 3. Refactored Solution

def separate_comma(digit)
	case digit
        when (0..999) then digit.to_s
        when (1000..999999) then digit.to_s.reverse.insert(3, ',').reverse 
        when (1000000..999999999) then digit.to_s.reverse.insert(3, ',').insert(7, ',').reverse 
     end   	
end



# 4. Reflection 
=begin
This challenge was pretty good. The hardest part about it was deciding how to insert a comma into the string (digit)
and in its proper place. I researched the inject() method which takes 2 paramenters the index location to insert, and the 
the 2 parameter is what you want to enter into the string. I did learn from this solo challenge. I look forward to the next challenge

=end

