class Hangman
  attr_reader :word
  attr_accessor :state, :guessed_letters, :word_state, :guesses_left

  def initialize
    @state = 0
    @guessed_letters = []
  end

  def set_word(word)
    @word = word
    @word_state = word.gsub(/./, '_')
    @guesses_left = calc_guesses
  end

  def calc_guesses
    @word.length * 3
  end

  def check_guess(guess)
    
  end

  def check_win

  end
end

loop do
  puts "Welcome to Hangman! Type 'exit' at any time to quit, or 'restart' to start over."
  game = Hangman.new
  input = nil
  loop do
    break if game.state >= 8

    case game.state
    when 0
      puts "Player One, enter a secret word!"
      game.state = 1
    when 2
      puts "Okay, the secret word has been set."
      puts "Player Two, you have #{game.guesses_left} guesses to get all of the correct letters of the secret word: #{game.word_state}."
      game.state = 3
    when 3
      puts "Word: #{game.word_state} | Guesses: #{game.guesses_left}"
      puts "Guess another letter!"
    when 4
      puts "You need to enter a single letter as a guess..."
      game.state = 3
    when 5
      puts "You've already guessed that! Don't worry, it won't count against you - guess again!"
      game.state = 3
    when 6
      puts "Correct guess!"
      game.state = 3
    when 7
      puts "That is an incorrect guess."
      game.state = 3
    end

    input = gets.chomp.downcase
    break if input == 'restart' || input == 'exit'

    case game.state
    when 1
      game.set_word(input)
      game.state = 2
    when 3
      if input.length == 1
        if game.guessed_letters.include? input
          game.state = 5
        else
          game.guesses_left -= 1
          game.guessed_letters << input
          if game.check_guess(input)
            game.state = 6
          else
            game.state = 7
          end
          if game.check_win
            game.state = 8
          elsif game.guesses_left <= 0
            game.state = 9
          end
        end
      else
        game.state = 4
      end
    end
  end

  break if input == 'exit'

  case game.state
  when 8
    puts "Sorry, but you've run out of guesses... You lose!"
  when 9
    puts "Nice job! You guessed all of the letters!"
  else
    puts "Restarting Hangman..."
  end
end

puts "Game over! Thanks for playing."
