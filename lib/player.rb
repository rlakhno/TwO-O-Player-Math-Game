# player.rb

class Player
  attr_reader :name, :lives

  def initialize(name, lives = 3)
    @name = name
    @lives = lives

    puts "New player created: #{@name}, Lives: #{@lives}" # Debugging output
    raise "Invalid number of lives: #{@lives}" if @lives <= 0 # Debugging error
  end

  def lose_life
    @lives -= 1
    puts "#{@name} lost a life! Lives remaining: #{@lives}" # Debugging output
  end

  def has_lives?
    @lives > 0
  end
end
