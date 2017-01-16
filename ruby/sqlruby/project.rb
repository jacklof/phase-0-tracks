require 'sqlite3'

class UserInterface
  def initialize

  end

  def execute(input)

  end
end

puts "Initializing..."
ui = UserInterface.new
loop do
  input = gets.chomp.downcase
  break if input == 'exit'
  ui.execute(input)
end
puts "Exiting..."
