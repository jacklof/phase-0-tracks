class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance with [gender: #{gender}, ethnicity: #{ethnicity}]"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho, Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer))
    @reindeer_ranking << reindeer
  end

  def set_gender(gender)
    @gender = gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end
end

# s = Santa.new
# p s
# s.speak
# s.eat_milk_and_cookies("chocolate chip")

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
i = genders.length - 1
until i <= 0 do
  santas << Santa.new(genders[i], ethnicities[i])
  i -= 1
end

p santas[0].get_mad_at("Vixen")
p santas[3].celebrate_birthday
p santas[2].set_gender("male")
p santas[3].age
p santas[1].ethnicity
