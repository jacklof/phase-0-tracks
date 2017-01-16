require 'sqlite3'

class UserInterface
  def initialize
    puts "Welcome to your daily running log! Enter 'help' for a list of commands, or 'exit' to quit."

    @run_data = SQLite3::Database.new("runs.db")
    @run_data.results_as_hash = true

    cmd_init_table = <<-SQL
      CREATE TABLE IF NOT EXISTS runs (
        id INTEGER PRIMARY KEY,
        day DATE,
        miles DECIMAL(3, 2),
        speed TIME
      )
    SQL

    @run_data.execute(cmd_init_table)
  end

  def execute(args)
    case args[0]
    when 'help'
      puts "help.................view this list"
      puts "list.................show all stored runs with IDs"
      puts "add [miles] [time]...add a new run, with time formatted as HH:MI:SS"
      puts "remove [run].........remove a run with the specified number"
    when 'list'
      runs = @run_data.execute("SELECT * FROM runs")
      runs.each do |run|
        puts "Run \##{run['id']} was for #{run['miles']}mi and lasted #{run['speed']} on #{run['day']}."
      end
    end
  end
end

puts "Initializing..."
ui = UserInterface.new
loop do
  input = gets.chomp.downcase
  break if input == 'exit'
  ui.execute(input.split(' '))
end
puts "Exiting..."
