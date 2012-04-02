class Game
  def initialize 
    @score = []
  end

  def roll(pins)
    @score << pins
  end

  def score
    cscore = 0

    @score.each_with_index do |x, idx|
      if 10 == x && @score.size - idx > 3
        cscore += @score[idx..idx + 2].inject(:+)
      else
        cscore += x
      end
    end
    cscore
  end
end
