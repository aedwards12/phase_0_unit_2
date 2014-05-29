# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
=begin

assert { name == "billybob" }
=end


# 2. Pseudocode what happens when the code above runs
=begin
when the code runs assert receive block section from line 13 and line 15 the code passes for line 13 name=="bettysue
" but fails for billybob.  
=end


# 3. Copy your selected challenge here
boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


def elementsOfCol(board, col)
	arr = []
	for i in 0..3
	 arr << board[i][col]
	end
	str =  "The elements of column " + col.to_s +  " are " + arr.join(", ") + "."
end 


# 4. Convert your driver test code from that challenge into Assert Statements
def assert
  raise "Assertion failed!" unless yield
end
test = "The elements of column 2 are a, d, l, k."


=begin
y =  elementsOfCol(boggle_board, 2)
puts y
puts y.eql? "The elements of column 2 are a, d, l, k."
=end

assert{ test == elementsOfCol(boggle_board, 2)}


# 5. Reflection
=begin
I learned how to put rspec plugin in sublime text2. Which makes life so much easier. This challenge was okay
I'm still uncomfortable with yield and clock statements. I definitely need to speak with people that understand
it better than I do. I feel confortable making driver code using def assert.  However im not used to it. Im used to just
making print statements and looking at what the code is doing. It makes sense to use this. However you must know
exactly what the output should be before you make these driver statements. I feel fairly comfortable with these learning
competencies. 
=end

