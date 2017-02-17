puts "What is the hamster's name?"
name = gets.chomp

puts "Volume level preference?(1-10)"
volume = gets.chomp.to_i

puts "What is your preferred fur color?"
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
