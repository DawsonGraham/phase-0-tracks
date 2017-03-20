# March Madness basketball - odds to win championship generator based on user-inputted team name.
# Will also return the potential payout if $10 were bet on user-input team.

require 'sqlite3'

db = SQLite3::Database.new("march_madness.db")
db.results_as_hash = true

create_table = <<-SQL 
	CREATE TABLE IF NOT EXISTS march_madness(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	odds INT
  	)
SQL

db.execute(create_table)

# Create hash of remaining March Madness NCAA basketball teams with their odds to win the championship as the values
remaining_teams = {
	"Duke" => 8,
	"Kentucky" => 6,
	"Kansas" => 8,
	"Oregon" => 12,
	"North Carolina" => 12,
	"Michigan State" => 50,
	"Arizona" => 12,
	"Xavier" => 200,
	"Wisconsin" => 15,
	"UCLA" => 7,
	"West Virginia" => 25,
	"Gonzaga" => 10,
	"Florida" => 30,
	"USC" => 200,
	"Baylor" => 25,
	"South Carolina" => 100,
	"Purdue" => 40,
	"Rhode Island" => 300,
	"Arkansas" => 500,
	"Butler" => 50,
	"Cincinnati" => 100
}

# Made this method below just to ensure db and sql communications were working properly
# def insert_team(db, name, odds)
#	db.execute("INSERT INTO march_madness (name, odds) VALUES (?, ?)", [name, odds])
# end

# Just chose to select Arkansas as they had a unique odds number of 500
check = db.execute("SELECT odds FROM march_madness WHERE name= 'Arkansas'")
# p check
if check == [{"odds"=>500, 0=>500}]
else
# populate database with each key-value pairs from remaining_teams hash
	prepare = db.prepare("INSERT INTO march_madness (name, odds) VALUES (?, ?)")
	remaining_teams.each do |k, v|
	prepare.execute(k, v)
	end
end

# Quick check for the condition statement
# madness = db.execute("SELECT * FROM march_madness")
# madness.each do |team|
#	puts "#{team['name']} has a #{team['odds']} to 1 chance of winning the NCAA Championship."
# end

# DRIVER CODE
spelling = false
until spelling == true
	puts "Provide me with an NCAA basketball team and I'll tell you their chances of winning March Madness!"
	user_team = gets.chomp

def user_team_odds (db, user_team)
	user_results = db.execute("SELECT odds FROM march_madness WHERE name= '#{user_team}'")
	user_odds = user_results[0]
	final_user_odds = user_odds["odds"]
	payout = 10 * final_user_odds
	puts "#{user_team} has a #{final_user_odds} in 1 chance of winning the NCAA Championship! If you bet $10 on them to win, you would receive a payout of $#{payout}."
end

if remaining_teams.include? (user_team)
	user_team_odds(db, user_team)
	spelling = true
else
	puts "Whoops! Looks like there may have been a typo. Please only enter the university name."
end
end


