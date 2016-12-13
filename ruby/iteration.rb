# Pair: John Loftus & Elrey Belmonti
# Time: 1h50m

# method that iterates
def foo(array)
	array.each {|item| puts "This is an item in the array: #{item}"}
end
array = ["a","b","c","d"]
p foo(array)

# define array & hash
colors = ["red", "green", "blue"]
profile = {
	name: "Bob",
	age: 55,
	hair_color: "Purple",
	shoe_size: 10,
	happy_person: true
}

# the following snippets should be run seperately
# as some calls will overwrite the original vars
# i.e. comment out code that you do not want to run

#.each method
colors.each {|color| puts "#{color.upcase} is a component of RGB!"}

profile.each do |key, value|
	puts "Your #{key} is #{value}."
	end

#.map method
p colors
colors.map do |color|
	puts "#{color} cat"
end
p colors


#.map! method
p colors
colors.map!{|color| color + "!"}
p colors

# Method to iterate through items and delete any that meet a certain condition

#.delete_if
p colors
colors.delete_if {|color| color.downcase.include?('r')}
p colors

p profile
profile.delete_if {|key, value| value.class == Fixnum}
p profile

# A method that filters a data structure for only
# items that do satisfy a certain condition
#.select
p colors
colors.select! do |color|
	color.downcase.include?('u')
end
p colors

p profile
profile.select! do |key, value|
	value.class == String
end
p profile

#.keep_if
p colors
colors.keep_if {|color| color.upcase.include?('G')}
p colors

p profile
profile.keep_if {|key,value| key.to_s.downcase == "name"}
p profile

# Method that removes item condition in the block evaluates to false
# .drop_while
p colors
p colors.drop_while  {|c| (c == "red" || c == "green")}

# Method that removes item condition in the block evaluates to false
# .reject!
p profile
profile.reject! {|key,value| key > :shoe_size}
p profile
