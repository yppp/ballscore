class Game
  def initialize 
    @score = []
  end

  def roll(pins)
    @score << pins
  end

  def score
    @score.inject(:+)
  end
end
