class Santa
  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho, Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
end

s = Santa.new
p s
s.speak
s.eat_milk_and_cookies("chocolate chip")
