
def encrypt (word)
length=word.length
encrypt_word = "" 
index = 0
while index < length
letter = word[index].next
encrypt_word += letter
index+=1 
end
p encrypt_word
end


def decrypt (word)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
	length = word.length
	decrypt_word = ""
	index = 0
	a = 0 
	while index < length
		encrypt_letter = word[a]
		decrypt_letter = alphabet.index("#{encrypt_letter}")
		decrypt_letter = decrypt_letter - 1 
		decrypt_word += (alphabet[decrypt_letter])
		index += 1
		a +=1 
	end
	p decrypt_word
end

