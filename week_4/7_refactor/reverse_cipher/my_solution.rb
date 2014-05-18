# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ]. by myself


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) # declare a new method and give it one parameter
    alphabet = ('a'..'z').to_a  # declare a new array and store in it the letter of the alphabet
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # makes a hash called cipher with key alphabet digit and value of alphabet + 4  
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # declare a new array spaces with said contents
    
    original_sentence = sentence.downcase # declare variable original_sentence and assign it the contents of sentence coverted to downcase sting
    encoded_sentence = [] # declare empty array encoded_sentence
    original_sentence.each_char do |element| # for each character in array do 
      if cipher.include?(element) # if element equals a matching key value in cipher 
        encoded_sentence << cipher[element] # push  cipher value of key(element) to encoded_sentence
      elsif element == ' ' # if element equals space
        encoded_sentence << spaces.sample # push a randomly chosen spaces element onto encoded array
      else 
        encoded_sentence << element # push element to encoded_sentence
      end
     end
    
    return encoded_sentence.join # concatenates elements of array to a string
end


# Questions:
# 1. What is the .to_a method doing? converts string to an array
# 2. How does the rotate method work? What does it work on? it takes the arrays index value of each element of array and assigns it the value of a different index values content
# 3. What is `each_char` doing? looks a each individual character of string 
# 4. What does `sample` do? chooses a random element of array 
# 5. Are there any other methods you want to understand better? I want to understand hashes better
# 6. Does this code look better or worse than your refactored solution 
#    of the original cipher code? What's better? What's worse?
# 7. Is this good code? What makes it good? What makes it bad?
#     I think this is good code there is one line that i dont think is needed (spaces = ["@", "#", "$", "%", "^", "&", "*"] ). This code
#     also doesnt consider how to handle digits (I think they should be encrypted also). And lastly this is very easy for a hacker to break

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? NO as it should because .sample chooses a different value for a ' ' char each time.  
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


# 5. Reflection 
=begin
This challenge was good. I like to think i am pretty decent at reading code. This line encoded_sentence << spaces.sample
 required that i look online how the sample method works. I also needed a refresher on how .include method works.  The .each_char
 methods was a method i was unaware of that will be useful going forward. I feel pretty confident with the compitencies of this challenge. 
=end



