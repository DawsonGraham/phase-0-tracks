# require gems
require 'sqlite3'
require "sinatra"
require "sinatra/reloader" if development?

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


get '/contact' do
  "Contact us at 123-456-7890 or stop by at 111 Made-Up Lane, somewhere in California"
end

get '/great_job/:name' do 
  person = params[:name]
  "Good job #{person}!!"
end

get '/great_job' do 
  "Good job!"
end

get '/add/:number1/:number2' do
  "#{params[:number1].to_i + params[:number2].to_i}"
end




