puts "What is the hamster's name?"
name = gets.chomp

puts "Volume level?(1-10)"
volume = gets.chomp.to_i

puts "What is the hamster's fur color?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption"
candidate = gets.chomp

age = nil
puts "What is the hamster's age?"
age = gets.chomp.to_i

if age == ""
	age = nil
else
	age
end

print "The hamster's name is #{name}, volume level is #{volume},the fur color is #{fur_color}, and the age is #{age}."

if candidate == "yes" || candidate == "y" || candidate == "ya"
  print " The hamster is a good candidate for adoption"
else 
  candidate == "No" || candidate == "no" || candidate == "n"
  print " The hamster is not a good candidate for adoption"
end