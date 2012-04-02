class Game
  def initialize 
    @score = []
  end

  def roll(pins)
    @score << pins
  end

  def score
    cscore = 0
    frameroll = 0
    framepins = 0

    @score.each_with_index do |x, idx|
      frameroll += 1
      framepins += x

      if frameroll == 1
        if 10 == framepins && @score.size - idx > 3
          cscore += @score[idx..idx + 2].inject(:+)
        else
          cscore += x
        end
      else
        if 10 == framepins && @score.size - idx > 3
          cscore += @score[idx..idx + 1].inject(:+)
        else
          cscore += x
        end
      end
      frameroll, framepins = [0, 0] if frameroll == 2 || framepins == 10
    end
    cscore
  end
end
