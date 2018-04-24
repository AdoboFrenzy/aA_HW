class Board
  attr_accessor :cups

  def initialize(name1, name2, num = 4)
    @cups = setup(num)

    @current_player = name1
    @player1 = name1
    @player2 = name2
  end

  def setup(num)
    cups = Array.new(14) {[]}

    cups.each_with_index {|cup, idx| idx == 6 || idx == 13 ? next :
                                cups[idx] = Array.new(4) {:stone}}
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 12
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    num = cups[start_pos].dup
    cups[start_pos].delete(:stone)

    idx = start_pos
    until num.empty?
      idx += 1
      idx = 0 if idx == 14

      if idx == 6
        cups[idx] << num.pop if current_player_name == @player1
      elsif idx == 13
        cups[idx] << num.pop if current_player_name == @player2
      else
        cups[idx] << num.pop
      end

    end

    render
    next_turn(idx)

  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0..5].none? {|cup| cup.count > 0} || cups[7..12].none? {|cup| cup.count > 0}
  end

  def winner
    if cups[6].count == cups[13].count
      "game is a draw"
      return :draw
    elsif cups[6].count > cups[13].count
      "#{@player1} is the winner"
      return @player1
    else
      "#{@player2} is the winner"
      return @player2
    end
  end
end
