# -*- coding: utf-8 -*-
require './ballscore.rb'

describe Game  do
  context "がすべてガターの時" do
    before do
      @game = Game::new
      20.times{@game.roll(0)}
    end

    it "スコアは0" do
      @game.score.should == 0
    end
  end

  context "ですべて1ピン倒した時" do
    before do
      @game = Game::new
      20.times{@game.roll(1)}
    end

    it "スコアは20" do
      @game.score.should == 20
    end
  end

  context "でパーフェクトの時" do
    before do
      @game = Game::new
      12.times{@game.roll(10)}
    end

    it "スコアは300" do
      @game.score.should == 300
    end
  end
end
