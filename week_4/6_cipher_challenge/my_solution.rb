# U2.W4: Cipher Challenge


# I worked on this challenge with: .
#Anthony Edwards Jr
#Avi Fox-Rosen

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



=begin
def north_korean_cipher(coded_message) # define method 'north_k_c' takes one par of 'coded_message'
  input = coded_message.downcase.split("") # input take takes in => coded message, downcase, split on each char, and send as array 
  decoded_sentence = [] # declaring new array variable 'decode_sentence'
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",     
            "h" => "d",     # cipher is a hash map of characters, when input feeds in a key, 
            "i" => "e",     #  the cipher returns the decoded value 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # Iterating over input x will be the variable that compares with key: value pair
    
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? // boolean variable found_match,  if false then we do not compute code between line 64-68.  (if statement)
    
    cipher.each_key do |y| # Iterating over cipherHash, y is variable that holds each key
      if x == y  # We compare if x (variable from each input) is equal to y (key variable from cipher) / is this a letter in our key ?
        puts "I am comparing x and y. X is #{x} and Y is #{y}." #print statement - recording what we did above
        decoded_sentence << cipher[y]  # push cipher[y] key's value to decoded sentence
        found_match = true # we change status of found_match to true
        break  # Why is it breaking here? //  We want to break out of loop because we found a match for x
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? // equivelent test for '*,^,%,$,#,@' if x (variable from each input) equals a symbol. 
        decoded_sentence << " " # substitute a space " " for it. 
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?  // We create a range  from 0-9 then convert it too an array then test array to see if contains our variable x 
        decoded_sentence << x # push x key's value to decoded sentence
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?   // if found_match = false 
      decoded_sentence << x  # push x to decoded sentence
    end
  end
  decoded_sentence = decoded_sentence.join("") #  redefining decode_sentence from and array to a string
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. // If within our decoded message string we match any number of digits consecutively  
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... // divide that number by 100
  end  
  return decoded_sentence # What is this returning?  // returns decrypted string      
end
=end


# Your Refactored Solution

def north_korean_cipher(coded_message) # define method 'north_k_c' takes one par of 'coded_message'
  message_chars_array = coded_message.downcase.split("") # input take takes in => coded message, downcase, split on each char, and send as array 
  decoded_sentence = [] # declaring new array variable 'decode_sentence'

  message_chars_array.each do |chr| # Iterating over input compare_key will be the variable that compares with key: value pair
    
    key_a_d = 22
    key_e_z = 4
    if chr.match(/[a-d]/) != nil # We check to see if chr is in letter range a - d
        decoded_sentence << ( chr.ord + key_a_d ).chr # we convert chr to its equivelent ascii value the add the decode key to it. then convert back to char 
    elsif chr.match(/[e-z]/) != nil# We check to see if compare key is in the range e-z 
        decoded_sentence << ( chr.ord - key_e_z  ).chr
    elsif chr == "@" || chr == "#" || chr == "$" || chr == "%"|| chr == "^" || chr == "&"|| chr =="*" #What the heck is this doing? // equivelent test for '*,^,%,$,#,@' if x (variable from each input) equals a symbol. 
        decoded_sentence << " " # substitute a space " " for it. 
    elsif chr.match(/\d/) != nil # Try this out in IRB. What does   " (0..9).to_a "    do?  // We create a range  from 0-9 then convert it too an array then test array to see if contains our variable x 
        decoded_sentence << chr # push chr key's value to decoded sentence
    else  # What is this looking for?   // if found_match = false 
      decoded_sentence << chr  # push x to decoded sentence
    end
  end
  decoded_sentence = decoded_sentence.join("") #  redefining decode_sentence from and array to a string
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. // If within our decoded message string we match any number of digits consecutively  
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... // divide that number by 100
  end  
  return decoded_sentence # What is this returning?  // returns decrypted string      
end



# Driver Code:
p ( north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" ) #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."

p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"

p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."

p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"

p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"


# Reflection

=begin
his challenge was a good one. I paired with Avi Fox-Rosen for this challenge.  
We worked really well together on this challenge. He seems to understand a lot 
about ruby at this moment which proved to be really valuable for this challenge. 
 We had to do a good amount of research on the internet for various methods and 
  regular expression look up.  Commenting every line was a bit tedious but it help 
  really flush out what the code was doing.  I think adding an encryption method would 
  have also been a good challenge for the future. =end


 