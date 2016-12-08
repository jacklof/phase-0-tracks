$alph = "abcdefghijklmnopqrstuvwxyz"

def encrypt(str)
  i = 0
  nstr = ""
  while i < str.length
    if str[i] != " "
      aix = $alph.index(str[i])
      #case for letter z and wrap to a
      if aix + 1 >= $alph.length
        aix = -1
      end

      nstr = nstr + $alph[aix + 1]
    else
      nstr += " "
    end
    i += 1
  end
  return nstr
end

def decrypt(str)
  i = 0
  nstr = ""
  while i < str.length
    if str[i] != " "
      aix = $alph.index(str[i])
      #case for letter a and wrap to z
      if aix - 1 <= -1
        aix = $alph.length
      end
      nstr = nstr + $alph[aix - 1]
    else
      nstr += " "
    end
    i += 1
  end
  return nstr
end

puts encrypt("hello worldz")

puts decrypt(encrypt("hello worldz"))
