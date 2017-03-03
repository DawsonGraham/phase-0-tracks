class WordGame
  attr_reader :guess_count, :correct_word, :secret_word
  
  def initialize
    @guess_count = 0 
    @correct_word = false 
    @secret_word = ""
    @counter = 0 
  end
  
  def user_secret_word(x)
    @secret_word = x 
    @guess_count = x.length
    p @guess_count
    @counter = @guess_count
  end
  
  
  def guess_word(x)
     blank_array = []
    if x == @secret_word
      puts "Congrats! You guessed '#{@secret_word}' which was the secret word!"
      @correct_word = true 
    elsif
      x.length == 1 
      word_array = @secret_word.split("")
      until @counter == 0  
        blank_array << "_"
        @counter = @counter - 1 
      end
      if word_array.include?(x)
        index = word_array.index(x)
        blank_array.insert(index, x)
        p blank_array
      else
        p blank_array
      end
    end
    @guess_count = @guess_count - 1 
    end
  
end

# user interface    
puts "Welcome to the Word Game!"
game = WordGame.new 
    
puts "Enter a word for the other user to guess"
  word = gets.chomp
  game.user_secret_word(word)
  num_of_guesses = word.length

until game.guess_count == 0 || game.correct_word == true
puts "Guess the secret word, or a single letter!"
guess = gets.chomp
game.guess_word(guess)
num_of_guesses = num_of_guesses - 1 
if game.guess_count == 0 
  puts "Looks like Hangman was never really your game, huh?"
end
end
