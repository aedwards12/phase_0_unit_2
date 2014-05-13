# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].
# 
# 1. Pseudocode

# What is the input? an array
# What is the output? (i.e. What should the code return?) 
# The code should return the sum to the array elements and for the second method it should take an array and add concatenate them together with a space in between. Then capitalize it and add a '.' to the end 
# What are the steps needed to solve the problem?
# For first method 
#For the first method I need to make a new variable the add the elements in an array to it

#For the second method I need to make a new variable and add the elements too it. Then capitalize the first letter in it and add a period at the end of it


# 2. Initial Solution
# def total(num)
#   sum = 0.0
#   num.each{|i| sum += i}
# end

# def sentence_maker(sent)
#  str = " " 
#  sent.each {|i| str += i + " "}
#  str.capitalize!+ "."
# end


# 3. Refactored Solution
def total(num)
  sum = 0.0
  num.reduce(:+)
end

def sentence_maker(sent)
 str = " " 
 str = sent.join(' ')
 str.capitalize!+ "."
end


# 4. Reflection 

=begin
This challenge was not difficult in theory, however I had a rough time using the proper syntax to complete this challenge.  
There are so many methods in the ruby library that are available for use that I did not know or had forgot about.  I’m not a 
fan of this style of learning because it always takes me a while to understand =end
