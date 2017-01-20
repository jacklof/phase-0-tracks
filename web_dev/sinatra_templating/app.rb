# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

#static is also commonly named public

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

post '/students/search' do
  name = params['name']
  age = params['age']
  campus = params['campus']
  if name.empty? && age.empty? && campus.empty?
    redirect '/students/searchfor'
  else
  	@search = db.execute("SELECT * FROM students")
    @results = []

    # RUBY DATA MANIPULATION
    # @search.each do |student|
    #   match_name = (student['name'].downcase.start_with?(name.downcase))
    #   match_age = (age.to_i == student['age'])
    #   match_campus = (campus.downcase == student['campus'].downcase)
    #
    #   if name.empty?
    #     if age.empty?
    #       if !campus.empty?
    #         # name: EMPTY, age: EMPTY, campus: FILLED
    #         @results << student if match_campus
    #       end
    #     else
    #       if campus.empty?
    #         # name: EMPTY, age: FILLED, campus: EMPTY
    #         @results << student if match_age
    #       else
    #         # name: EMPTY, age: FILLED, campus: FILLED
    #         @results << student if match_age && match_campus
    #       end
    #     end
    #   else
    #     if age.empty?
    #       if campus.empty?
    #         # name: FILLED, age: EMPTY, campus: EMPTY
    #         @results << student if match_name
    #       else
    #         # name: FILLED, age: EMPTY, campus: FILLED
    #         @results << student if match_name && match_campus
    #       end
    #     else
    #       if campus.empty?
    #         # name: FILLED, age: FILLED, campus: EMPTY
    #         @results << student if match_name && match_age
    #       else
    #         # name: FILLED, age: FILLED, campus: FILLED
    #         @results << student if match_name && match_age && match_campus
    #       end
    #     end
    #   end
    # end
  	erb :printlookup
  end
end

get '/students/searchfor' do
	erb :lookup
end


# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources
