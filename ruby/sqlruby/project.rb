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
      puts " -=: COMMANDS :=- "
      puts "help.................view this list"
      puts "list.................show all stored runs"
      puts "add [miles] [time]...add a new run, as miles (ex. 2.4) and time (HH:MI:SS)"
      puts "remove [run].........remove a run with the specified number"
      puts "show [run]...........display a run with the specified number"
      puts " -=: -------- :=- "
    when 'list'
      runs = @run_data.execute("SELECT * FROM runs")
      runs.each do |run|
        puts "Run \##{run['id']} was for #{run['miles']}mi and lasted #{run['speed']} on #{run['day']}."
      end
    when 'add'
      if args.length < 3
        puts "Incorrect amount of arguments for 'add'. Usage: 'add [miles] [time]'."
      else
        @run_data.execute("INSERT INTO runs (day, miles, speed) VALUES (date('now'), ?, time(?))", [args[1].to_f, args[2]])
        puts "Added the run. Use 'list' to see changes."
      end
    when 'remove'
      if args.length < 2
        puts "Incorrect amount of arguemnts for 'remove'. Usage: 'remove [run]'"
      else
        @run_data.execute("DELETE FROM runs WHERE id=?", [args[1].to_i])
        puts "Removed the run. Use 'list' to see changes."
      end
    when 'show'
      if args.length < 2
        puts "Incorrect amount of arguemnts for 'show'. Usage: 'show [run]'"
      else
        puts @run_data.execute("SELECT * FROM runs WHERE id=?", [args[1].to_i])
    else
      puts "Unidentified command. Please make sure you typed correctly!"
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
