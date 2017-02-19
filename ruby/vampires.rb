puts "How many employees will be processed?"
employees = gets.chomp.to_i

timer = 0 
until timer == employees

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

match = false
if age == (2017-year) || age == (2016-year)
	match = true
else
	match = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp

willing = false
if garlic_bread.downcase == "yes" || garlic_bread.downcase == "ya" ||
  garlic_bread.downcase == "y" 
	willing = true
else
	willing = false
end

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

signup = false
if health_insurance.downcase == "yes" || health_insurance.downcase == "ya" || health_insurance.downcase == "y"
	signup = true
else
	signup = false
end

obvious_name = false
if name.downcase == "drake cula" || name.downcase == "tu fang"
	puts "Definitely a vampire"
	obvious_name = true
else
	obvious_name = false
end

while obvious_name == false
	if match == true && (willing == true || signup == true)
		puts "Probably not a vampire."
	elsif match == false && willing == false && signup == false
	  puts "Almost certainly a vampire"
	elsif match == false && (willing == false || signup == false)
		puts "Probably a vampire."
	else
	  puts "Results inconclusive"
	end
	obvious_name = true
end

timer += 1
end
