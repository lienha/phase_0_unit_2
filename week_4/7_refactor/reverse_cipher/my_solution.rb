# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def north_korean_cipher(coded_message)
  cipher = Hash[*(("e".."z").to_a + ("a".."d").to_a).zip(("a".."z").to_a).flatten]
    encoded_sentence = []
    coded_message.downcase.each_char do |element|
      if cipher.include?(element)
          encoded_sentence << cipher[element]
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #check for symbols to convert to spaces
          encoded_sentence << " "
      else 
        encoded_sentence << element
      end
    end
    return encoded_sentence.join
end

# Questions:
# 1. What is the .to_a method doing?
# 2. How does the rotate method work? What does it work on?
# 3. What is `each_char` doing?
# 4. What does `sample` do?
# 5. Are there any other methods you want to understand better?
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# 7. Is this good code? What makes it good? What makes it bad?


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")






# 5. Reflection 

