#Define encrypt method
def encrypt (word)
#Assign word length and initiate variables needed
length=word.length
encrypt_word = "" 
index = 0
#Add while loop to continue adding letters until index exceeds word length
while index < length
letter = word[index].next
if letter == "aa"
  letter = "a"
end
encrypt_word += letter
index+=1 
end
#print encrypted word once index > word length
p encrypt_word
end

#Define decrypt method
def decrypt (word)
#Assign word length and initiate variables needed
  alphabet = "abcdefghijklmnopqrstuvwxyz"
	length = word.length
	decrypt_word = ""
	index = 0
	a = 0 
#Add while loop to continue adding letters until index exceeds word length
	while index < length
    #Reference each index number of provided word with alphabet above. 
		encrypt_letter = word[a]
		decrypt_letter = alphabet.index("#{encrypt_letter}")
        #Subtract 1 from index number
		decrypt_letter = decrypt_letter - 1 
        #Reference new index number with alphabet. Add in the new reference letter to decrypt_word
		decrypt_word += (alphabet[decrypt_letter])
		index += 1
		a +=1 
	end
    #Print decrypted word once index > word length
	puts "your decrypted password is: #{decrypt_word}"
end

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

# This nested method call works because they're pre-defined and they're comparing strings.
#decrypt(encrypt("swordfish"))

#Ask user whether they would like to encrypt or decrypt their password
puts "Would you like to encrypt or decrypt your password?" 
response = gets.chomp.downcase
good_response = false
#Add until loop to counter any improper user entries. Want them to choose 'encrypt' or 'decrypt'
until good_response
    #Add if statement to determine whether user chose to encrypt or decrypt
    if response == "encrypt"
        p "What is your password that you want to encrypt?"
        #Run encrypt method of their password submitted and change good_response to true to avoid endless loop
        encrypt (gets.chomp)
        good_response = true
    elsif response == "decrypt"
        p "What is your password that you want to decrypt?"
        #Run decrypt method of their password submitted and change good_response to true to avoid endless loop
        decrypt (gets.chomp)
        good_response = true
    else
        #Ask user to specifically answer with 'decrypt' or 'encrypt'
        p "Please answer with 'decrypt' or 'encrypt'"
        response = gets.chomp
    end
end