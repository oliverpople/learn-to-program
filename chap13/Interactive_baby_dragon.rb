
class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly     = 10
    @stuff_in_intestine = 0

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke"
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private # "prviate" here mean the methods are
   #internal to object only (e.g. you can feed your dragon,
   #but csnt ask him if he's hungry.)
  def hungry?
     @stuff_in_belly <= 2
  end

  def poopy?
     @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      #Move from belly into instestine
    @stuff_in_belly     = @stuff_in_belly     -1
    @stuff_in_intestine = @stuff_in_intestine +1
    else # dragon is starving!
      if @asleep
      @asleep = false
      puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit # This quits the program
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddnely!'
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new name
obj = Object.new # Just balnk dummy object to test commands against

while true
  puts
  puts 'commands: feed, toss, walk, rock, put_to_bed, exit'
  command = gets.chomp
  if command == 'exit'
    exit
  elsif pet.respond_to?(command) && !obj.respond_to?(command)
    #  checks to see whether method is accepted by dragons
    #but not by regular objects
    pet.send command
  else
    puts 'Huh? Please type one fo the commands.'
  end
end
