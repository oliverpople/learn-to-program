class Die

  def initialize
    puts "Do you want to play fair, or cheat this one?   To cheat, type 'cheat' and press enter. Otherwise just press enter."
    response = gets.chomp
    if response == 'cheat'
      cheat
    else
      roll
    end
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    puts "You roll a #{@number_showing}"
  end

  def cheat
    puts 'What number do you want to roll? (1-6)'
    number = gets.chomp.to_i
    if number >= 1 && number <= 6
      @number_showing = number
    else
      puts 'Does not compute...idiot.'
      roll
    end
    @number_showing
  end

end

# As we're only using this once, we don;t need to save it in a variable
puts Die.new.showing
