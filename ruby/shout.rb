# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# 
#   def self.yell_happily(words)
#   	words + "!!!" + ":)"
#   end
# end

# p Shout.yell_angrily("I'm testing my mad yell")

# p Shout.yell_happily("I'm testing my happy yell")

module Shout
	def yell_angrily(words)
		words + "!!" + " :("
	end

	def yell_happily(words)
		words + "!!" + " :)"
	end
end

class Man
	include Shout
end

class Woman
	include Shout
end

man = Man.new
p man.yell_angrily("Get off my lawn you dang kids")

woman =Woman.new
p woman.yell_happily("Food is ready")