# 6.2 Pairing Instance methods
# John Loftus
# Joseph Huang
# Time: 30m

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times { puts "Woof!" }
  end

  def roll_over
    puts "*rolls over*"
  end

  def sit
    puts "*sits*"
  end

  def dog_years(human_years)
    human_years * 7

  end

  def initialize
    puts "Initializing new puppy instance..."
  end
end

class Cook

  def initialize
    puts "The cook is preparing..."
  end

  def ignite_stove
    puts "Lit the ignition"
  end

  def pan_size(size)
    puts "The cook chose pan-size: #{size}."
  end

end

#
# Driver code for class Puppy
#
# fido = Puppy.new
# fido.fetch("ball")
# fido.speak(3)
# fido.roll_over
# fido.dog_years(4)
# fido.sit

#
# Driver code for class Cook
#

# Stores all of the instances in a data structure
cook_array = []
50.times do |index|
  cook_array[index] = Cook.new
end

# Iterate over data structure cook using .each and call the instance methods
cook_array.each do |cook|
  puts "\nCook No. #{cook_array.index(cook) + 1}"
  cook.ignite_stove
  cook.pan_size(4)
end
