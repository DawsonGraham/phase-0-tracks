# March Madness basketball - odds to win championship generator based on user-inputted team name.

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

def insert_team(db, name, odds)
	db.execute("INSERT INTO march_madness (name, odds) VALUES (?, ?)", [name, odds])
end

check = db.execute("SELECT odds FROM march_madness WHERE name= 'Arkansas'")
# p check
if check == [{"odds"=>500, 0=>500}]
else
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
puts "Provide me with an NCAA basketball team and I'll tell you their chances of winning March Madness!"
user_team = gets.chomp

def user_team_odds (db, user_team)
	user_results = db.execute("SELECT odds FROM march_madness WHERE name= '#{user_team}'")
	user_odds = user_results[0]
	puts "#{user_team} has a #{user_odds["odds"]} in 1 chance of winning the NCAA Championship!"
end

user_team_odds(db, user_team)

