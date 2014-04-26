# U2.W4: Cipher Challenge


# I worked on this challenge with: Hing Huynh.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # automate this by creating 2 arrays and zip them together into a hash. Hash is like a dictionary 
            "h" => "d",   # which gives value to things you need to look up. But hash has less methods that you can use
            "i" => "e",   # unlike arrays.
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
            
  input.each do |x| # .each iterates over the coded_message, one letter at a time.
    found_match = false  # It is false because it is the starting point to decode? When it's set to true, the first test returns false.
    cipher.each_key do |y| # .each_key iterates over each key of the hash
      if x == y  # comparing coded_message to the keys letter by letter.
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #check for symbols to convert to spaces
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # check the coded_message for numbers from 0 to 9 and push into decoded_sentence
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # push everything else not matched into decoded_sentence
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) # looking for any numbers
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # divide found numbers by 100.
  end  
  return decoded_sentence # THE DECODED MESSAGE!!!  
end


# Your Refactored Solution
def north_korean_cipher(coded_message)
  cipher = Hash[*(("e".."z").to_a + ("a".."d").to_a).zip(("a".."z").to_a).flatten]
    decoded_sentence = []
    coded_message.downcase.each_char do |item|
      if cipher.include?(item)
          decoded_sentence << cipher[item]
      elsif item == "@" || item == "#" || item == "$" || item == "%"|| item == "^" || item == "&"|| item =="*"
          decoded_sentence << " "
      else 
          decoded_sentence << item
      end
    end
    decoded_sentence = decoded_sentence.join
  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
  end
  return decoded_sentence
end
# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
 