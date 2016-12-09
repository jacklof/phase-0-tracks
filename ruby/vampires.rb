$name = nil
$age = nil
$year = nil
$bread = nil
$insur = nil

def survey
  puts "What is your name?"
  $name = gets.chomp.capitalize

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
end

def processVampire(n, a, y, b, i)
  str = "Results inconclusive"
  if 2016 - y == a
    if b
      str = "Probably not a vampire"
    end
  else
    if !b || !i
      if !b && !i
        str = "Almost certainly a vampire"
      else
        str = "Probably a vampire"
      end
    end
  end
  if n == "Drake Cula" || n == "Tu Fang"
    str = "Definitely a vampire"
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
  puts "\n"
  survey
  puts "\nEmployee: " + $name
  puts "Results => " + processVampire($name, $age, $year, $bread, $insur)
  i += 1
end
