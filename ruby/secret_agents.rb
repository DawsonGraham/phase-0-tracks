
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


alphabet = "abcdefghijklmnopqrstuvwxyz"

