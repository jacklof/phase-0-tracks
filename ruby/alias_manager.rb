def makeAlias(str)
  # define what is a vowel and what is consonant
  vo = "aeiou"
  co = "bcdfghjklmnpqrstvwxyz"

  arr = str.split(' ')
  arr.reverse!
  arr.map! do |s|
    c = s.downcase.chars
    c.map! do |ch|
      if vo.include? ch
        # its a vowel
        ch = vo[vo.index(ch) < vo.length - 1 ? vo.index(ch) + 1 : 0]
      else
        # its a consonant
        ch = co[co.index(ch) < co.length - 1 ? co.index(ch) + 1 : 0]
      end
    end
    s = c.join('').capitalize
  end
  arr.join(' ')
end

enteredNames = {}
prompt = true
while prompt
  puts "Please enter a name you'd like to parse, or 'quit' if you'd like to stop."
  input = gets.chomp
  prompt = input == "" ? false : input == "quit" ? false : true
  if prompt
    enteredNames[input.to_sym] = makeAlias(input)
  end
end

print "\n"
enteredNames.each { |k, v| puts "#{k} is now known as #{v}." }
