class Santa
  attr_reader :ethnicity, :reindeer_ranking, :age
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = (Random.new).rand(140)
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
end

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
1000.times do
  santa = Santa.new(genders.sample, ethnicities.sample)
  puts "Gender: #{santa.gender} | " + "Ethnicity: #{santa.ethnicity} | " + "Age: #{santa.age}"
end
