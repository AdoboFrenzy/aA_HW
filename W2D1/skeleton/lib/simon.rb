class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play

    take_turn until game_over

    game_over_message
    reset_game

  end

  def take_turn

      shown = show_sequence
      ans = require_sequence

      if shown == ans
        round_success_message
      else
        @game_over = true
      end

      @sequence_length += 1

  end

  def show_sequence
    add_random_color

    @seq.each do |el|
      puts "\e[H\e[2J" # clears the terminal so there's no cheating in SIMON
      puts el
      sleep(1)
    end

    return @seq
  end

  def require_sequence
    ans = []
    puts "\e[H\e[2J" # clears the terminal so there's no cheating in SIMON
    puts "INPUT THE SEQUENCE ONE AT A TIME (ex. red > enter > blue > enter > green > enter)"
    @sequence_length.times {ans << gets.chomp}
    return ans
  end

  def add_random_color
    @seq << COLORS.sample

  end

  def round_success_message

    puts "YOU DID IT."
    sleep(1)

  end

  def game_over_message

    puts "YOU LOSE."

  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false

  end
end


if __FILE__ == $PROGRAM_NAME

game = Simon.new

game.play

end
