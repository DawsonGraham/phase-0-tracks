class Santa
	attr_reader :ethnicity, :hometown
	def initialize(gender, ethnicity, hometown)
		print "Initializing Santa instance..."
		@gender = gender 
		@ethnicity = ethnicity
		@hometown = hometown
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays! I'm a #{@ethnicity} #{@gender}, from #{@hometown}.\r\n"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at(reinder_name)
		@reindeer_ranking.delete(reinder_name)
		@reindeer_ranking.insert(8, reinder_name)
		puts "#{@reindeer_ranking}"
	end

	def gender=(new_gender)
		@gender = new_gender
	end

end

santa = Santa.new("Male", "Caucasion", "Pleasanton")

santa.speak

santa.eat_milk_and_cookies("snickerdoodle")

puts "Santa is of #{santa.ethnicity} descent"

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_hometowns = ["Germany", "Mexico", "Canada", "Congo", "Switzerland", "Antarctica", "N/A"]

example_genders.length.times do |i|
    santa =	Santa.new(example_genders[i], example_ethnicities[i], example_hometowns[i])
	  santas << santa
	  santa.speak
end


p santa.celebrate_birthday

santa.get_mad_at("Vixen")

p santa.celebrate_birthday

p santa 

santa.gender=("Male")

p santa
