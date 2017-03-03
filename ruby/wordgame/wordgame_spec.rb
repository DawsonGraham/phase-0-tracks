require_relative 'wordgame'

describe WordGame do 
	let(:wordgame) {WordGame.new}
	
	it "takes user input as secret word and returns word length as number of guesses" do
		expect (wordgame.user_secret_word("monster")).to eq "7 guesses!"
	end

	it "takes user input as a guess at the secret word. Congratulates if correct" do
		wordgame.user_secret_word("monster")
		expect (wordgame.guess_word("monster")).to eq "Congrats! You guessed '#{@secret_word}' which was the secret word!"
	end

	it "takes user input as guess at the secret word. If input is single character, break down secret word to array and keep only the letter from user input if it is found within array" do
		wordgame.user_secret_word("monster")
		expect (wordgame.guess_word("m")).to eq ["m","_","_","_","_","_","_",]
	end

	it "takes user input as guess at the secret word. If input is single character, break down secret word to array and replace all letters if user input is not found within array" do
		wordgame.user_secret_word("monster")
		expect (wordgame.guess_word("y")).to eq ["_","_","_","_","_","_","_",]
	end

end

