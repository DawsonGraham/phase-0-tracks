class WordGame
  attr_reader :guess_count, :correct_word, :secret_word, :blank_array
  attr_accessor :g
  
  def initialize
    @guess_count = 0 
    @correct_word = false 
    @secret_word = ""
    @counter = 0 
    @blank_array = []
    @g = ""
  end
  
  def user_secret_word(x)
    @secret_word = x 
    @guess_count = x.length
    p "You have #{@guess_count} guesses!"
    @counter = @guess_count
  end
  
  
  def guess_word(x)
    if x == @secret_word
      puts "Congrats! You guessed '#{@secret_word}' which was the secret word!"
      @correct_word = true 
    elsif
      x.length == 1 
      word_array = @secret_word.split("")
      until @counter == 0  
        @blank_array << "_"
        @counter = @counter - 1 
      end
      if word_array.include?(x)
        index = word_array.index(x)
        @blank_array.delete_at(index)
        @blank_array.insert(index, x)
        p @blank_array
        @guess_count = @guess_count - 1 
          p "You have #{@guess_count} guesses!"
      else
        p @blank_array
        @guess_count = @guess_count - 1 
        p "You have #{@guess_count} guesses!"
      end
      
    end
    
    end
    
    def last_guess_check(x)
      if x == @g 
        puts "You've already guessed that letter!"
        @guess_count += 1 
      else
      end
    end
end

# user interface    
puts "Welcome to the Word Game!"
game = WordGame.new 
  puts "Enter a word for the user to guess"
  word = gets.chomp 
  game.user_secret_word(word)

until game.guess_count == 0 || game.correct_word == true
puts "Guess the secret word, or a single letter!"
guess = gets.chomp
game.last_guess_check(guess)
game.guess_word(guess)

previous_guess = guess 
game.g=(previous_guess)
 
if game.guess_count == 0 && game.correct_word == false
  puts "Looks like Hangman was never really your game, huh?"
end
end
