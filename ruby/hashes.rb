# Define a method that asks the user to input name, age, number of children (if any), decor theme, and wallpaper preferences, as well as if the client wants to paint the outside of the house (if this is the case, also ask for the color).
# After asking for the name, capitalize it appropriately.
# After asking for the age, attempt to parse it as number.
# If it is not a number, or is not a whole, positive number, ask again.
# Do the same for number of children.
# After asking for the decor theme, ensure that it is one of several provided options.
# If it is not, ask again until it is.
# Do the same for wallpaper preferences.
# After asking if the client wants to paint, attempt to parse the Y/N answer into boolean, asking over and over again until yes or no is inputted (also taking true/false).
# Print to screen each value, preceeded by some phrase representative of the value's purpose.
# Ask which key the user wants to edit, or 'none' for no edit.
# Parse the input as a hash symbol, assuming the user has inputted an existing key-equivalent string.
# Replace the key's value with the new inputted value, parsed correctly according to above constraints.
# Print to screen all values again, with corresponding labels.
# Exit.

def prompt_user
  # Define our returned object
  client_hash = {}

  # Get client name
  puts "\nPlease enter the client's name."
  # Capitalize each part of a name
  name_parts = gets.chomp.split(' ')
  name_parts.map! { |part| part.capitalize }

  # Add name with proper capitalization to hash
  client_hash[:name] = name_parts.join(' ')

  # Get client age
  age = 0
  while age <= 0
    puts "\nPlease enter the client's age as a whole, positive number."
    age = gets.chomp.to_i
  end
  # Add age to hash
  client_hash[:age] = age

  # Get client number of children (if any)
  puts "\nDoes the client have any children?"
  haskids = nil
  until haskids == 'y' || haskids == 'n' do
    puts "Enter one: Y / N."
    haskids = gets.chomp.downcase
  end
  children = 0
  if haskids == 'y'
    while children <= 0
      puts "\nPlease enter the client's number of children as a whole, positive number."
      children = gets.chomp.to_i
    end
    # Add number of children to hash
  end
  client_hash[:children] = children

  # Get client decor theme
  puts "\nPlease enter the client's decor theme selection."
  decor = nil
  until decor == 'space' || decor == 'jungle' || decor == 'desert' || decor == 'beach' || decor == 'city' do
    puts "Enter one: Space / Jungle / Desert / Beach / City"
    decor = gets.chomp.downcase
  end
  # Add decor theme to hash
  client_hash[:decor] = decor.capitalize

  # Get client wallpaper prefs
  puts "\nPlease enter the client's wallpaper preference."
  paper = nil
  until paper == 'red' || paper == 'green' || paper == 'blue' do
    puts "Enter one: Red / Green / Blue"
    paper = gets.chomp.downcase
  end
  # Add wallpaper color to hash
  client_hash[:wallpaper] = paper.capitalize

  # Get client painting wishes
  puts "\nWould the client like a fresh coat of paint?"
  paint = nil
  until paint == 'y' || paint == 'n' do
    puts "Enter one: Y / N"
    paint = gets.chomp.downcase
  end
  # Add paiting wishes to hash
  client_hash[:paint] = paint == 'y'

  # Print out the mappings of the hash
  puts "\n-=: Client data :=-"
  client_hash.each do |k, v|
    puts "#{k}: #{v}"
  end

  # Return the compiled hash
  client_hash
end


#
# Driver code
#
client = prompt_user
puts "\nWould you like to modify an entry? If so, enter the entry's name, or 'none' if you are satisfied with your entries."
to_edit = gets.chomp.downcase
case to_edit
when 'none'
  puts "\nOkay, no modifications will be made."
else
  # This does not handle user error like the prompt_user method, assumes the user will input both a valid key and value.
  # According to the instructions given this is okay
  puts "\nWhat value shall it have?"
  client[to_edit.to_sym] = gets.chomp
end

puts "\n-=: Updated :=-"
client.each { |k, v| puts "#{k}: #{v}" }
