# March Madness basketball - odds to win championship generator based on user-inputted team name.

require 'sqlite3'

db = SQLite3::Database.new("march_madness.db")
