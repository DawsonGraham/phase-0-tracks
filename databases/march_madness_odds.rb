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
	"URI" => 300,
	"Arkansas" => 500,
	"Butler" => 50,
	"Cincinnati" => 100
}

def insert_team(db, name, odds)
	db.execute("INSERT INTO march_madness (name, odds) VALUES (?, ?)", [name, odds])
end

insert_team(db, "Creighton", 60)
madness = db.execute("SELECT * FROM march_madness")
madness.each do |team|
	puts "#{team['name']} has a #{team['odds']} to 1 chance of winning the NCAA Championship."
end




# remaining_teams.each do |team, chances|
# 	insert_team(db, team, chances)
#  end

# madness = db.execute("SELECT * FROM march_madness")
# madness.each do |team|
#	puts "#{team['name']} has a #{team['odds']} to 1 chance of winning the NCAA Championship."
# end

# remaining_teams.each do |key, value|
# 	db.execute("INSERT INTO march_madness (name, odds) VALUES (key, value)")
# end
# db.execute("INSERT INTO march_madness (name, odds) VALUES (Wichita_State, 100)")
# db.execute("SELECT * FROM march_madness")