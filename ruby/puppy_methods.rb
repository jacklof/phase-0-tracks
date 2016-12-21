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

#driver
fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(4)
fido.sit
