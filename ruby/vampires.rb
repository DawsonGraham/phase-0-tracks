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

if match == true && (willing == true || signup == true)
	puts "Probably not a vampire."
else
	puts "Results inconclusive."
end
