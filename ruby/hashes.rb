# Ask the user for the clients name, age, number of children, decor theme, and whether the client is good or not.
# Convert age and number of children to integers, and convert whether the client is good or not to a boolean.

client = {
	name: "",
	age: "",
	children: "",
	decor_theme: "",
	good_client: "",
}

puts "Enter the client's name"
client[:name] = gets.chomp

puts "Enter the client's age"
client[:age] = gets.chomp.to_i

puts "Enter the client's number of children"
client[:children] = gets.chomp.to_i

puts "Enter the decor theme"
client[:decor_theme] = gets.chomp

puts "Is the good client? (Answer yes or no)"
variable = gets.chomp
if variable.downcase == "yes"
	client[:good_client] = true
else 
	client[:good_client] = false
end

p client

puts "Would you like to update a key? Please enter the name of the key you'd like to update. Enter 'none' if you'd like to skip"
update = gets.chomp
if update == "none"
  
elsif update.downcase == "name"
	puts "What would you like the new name to be?"
	client[:name] = gets.chomp
elsif update.downcase == "age"
	puts "What would you like the new age to be?"
	client[:age] = gets.chomp.to_i
elsif update.downcase == "children"
	puts "What would you like the new number of children to be?"
	client[:children] = gets.chomp.to_i
elsif update.downcase == "decor theme"
	puts "What would you like the new decor theme to be?"
	client[:decor_theme] = gets.chomp
elsif update.downcase == "good client" || update.downce == "client"
	puts "Is the client a good client? (answer 'yes' or 'no')"
	a = gets.chomp
	if a.downcase == "yes"
		client[:good_client] = true
	else 
		client[:good_client] = false
	end
end

p client



