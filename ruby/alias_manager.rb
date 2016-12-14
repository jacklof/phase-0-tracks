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

puts makeAlias("Felicia Torres")
puts makeAlias("Jack Loftus")
