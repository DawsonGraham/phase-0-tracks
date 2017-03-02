class Santa
	def initialize(name)
		print "Initializing Santa instance..."
		@name = name
		@gender = "Male"
		@ethnicity = "Caucasion"
	end

	def speak
		print "Ho, ho, ho! Haaaappy holidays! I'm a #{@gender} and my name is #{@name}. "
	end

	def eat_milk_and_cookies(cookie_type)
		print "That was a good #{cookie_type}!"
	end

end

santa = Santa.new("Santa Claus")

santa.speak

santa.eat_milk_and_cookies("snickerdoodle")

