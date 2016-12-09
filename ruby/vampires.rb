def survey
  puts "What is your name?"
  $name = gets.chomp.downcase

  puts "How old are you?"
  $age = gets.chomp.to_i
  while $age <= 0
    puts "You must enter a positive integer:"
    $age = gets.chomp.to_i
  end

  puts "What year were you born?"
  $year = gets.chomp.to_i
  while $year == 0
    puts "Please enter a valid year:"
    $year = gets.chomp.to_i
  end

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
  $bread = gets.chomp.downcase
  while !($bread == "y" || $bread == "n")
    puts "Please enter Y or N:"
    $bread = gets.chomp.downcase
  end
  case $bread
  when "y"
    $bread = true
  when "n"
    $bread = false
  end

  puts "Would you like to enroll in the company's health insurance? (Y/N)"
  $insur = gets.chomp.downcase
  while !($insur == "y" || $insur == "n")
    puts "Please enter Y or N:"
    $insur = gets.chomp.downcase
  end
  case $insur
  when "y"
    $insur = true
  when "n"
    $insur = false
  end

  puts "Please list any allergies you have (enter 'done' when finished):"
  i = -1
  while $allerg[i] != "done"
    i += 1
    $allerg[i] = gets.chomp.downcase
  end
end

def processVampire(name, age, year, bread, insur, allerg)
  str = "Results inconclusive"
  if !allerg.include? "sunshine"
    if name == "drake cula" || name == "tu fang"
      str = "Definitely a vampire"
    elsif 2016 - year == age
      if bread
        str = "Probably not a vampire"
      end
    else
      if !bread || !insur
        if !bread && !insur
          str = "Almost certainly a vampire"
        else
          str = "Probably a vampire"
        end
      end
    end
  else
    str = "Probably a vampire"
  end
  return str
end

puts "How many employees are to be processed?"
no = gets.chomp.to_i
while no <= 0
  puts "You must enter a positive integer:"
  no = gets.chomp.to_i
end

i = 0
while i < no
  $name = nil
  $age = nil
  $year = nil
  $bread = nil
  $insur = nil
  $allerg = []

  puts "\n"
  survey
  puts "\nEmployee: " + $name.capitalize
  puts "Results => " + processVampire($name, $age, $year, $bread, $insur, $allerg)
  i += 1
end

puts "\nActually, never mind! What do these questions have to do with anything? Let's all be friends."
