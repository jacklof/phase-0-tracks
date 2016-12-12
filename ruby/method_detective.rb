# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, 'o')
# => “zoom”

"enhance".center(4)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
"the usual".insert(-1, " suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
" suspects".sub(' ', "the usual ")
" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chomp('r')
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".reverse.chomp('T').reverse
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".getbyte(0)
"z".replace("122").to_i
# => 122
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count('a')
# => 4
