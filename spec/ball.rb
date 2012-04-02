# -*- coding: utf-8 -*-
require './ballscore.rb'

describe Game, "がすべてガターの時" do
  before do
    @game = Game::new
    20.times{@game.roll(0)}
  end

  it "スコアは0" do
    @game.score.should == 0
  end
end
