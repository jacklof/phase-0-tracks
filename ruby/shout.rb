# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#     words + "!!! :) :)"
#   end
# end
#
# puts Shout.yell_angrily("Grr I'm mad")
# puts Shout.yelling_happily("Time for cake")

module Shout
  def yell(words)
    words + "!!!"
  end
  def shout(words)
    words.upcase + "!!!"
  end
end

class Human
  include Shout
end

class Alien
  include Shout
end

human = Human.new
alien = Alien.new
puts human.yell("I'm an angry person")
puts alien.shout("Grrraabbaallioacnnn")
