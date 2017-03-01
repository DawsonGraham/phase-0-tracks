class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def initialize
	puts "Initializing new puppy instance..."
end

end

p Puppy.new

def speak(int)
	int.times do 
	puts "Woof!"
end
end

speak(4)

def roll_over
	print "rolls over"
end

roll_over

def dog_years(int)
	int.to_i
	dog_age = int * 7
	p dog_age
end

dog_years(7)

def play_dead
	puts "The dog is motionless on the floor"
end

play_dead



class Timer
	def initialize
		puts "Timer initiated!"
	end

	def count_up
		counter = 1
		until counter > 50
		puts "#{counter}"
		counter +=1
		end
	end

	def count_down
		counter = 50
		until counter == 0
			puts "#{counter}"
			counter = counter - 1
		end
	end

end

timer_array = []

p Timer.new

50.times do 
	timer_array << Timer.new
end

p timer_array

timer_array.each {|x| p x.count_down}

timer_array.each {|x| p x.count_up}








