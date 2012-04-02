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

  context "ですべて5ピン倒した時" do
    before do
      @game = Game::new
      21.times{@game.roll(5)}
    end

    it "スコアは150" do
      @game.score.should == 150
    end
  end
end

describe Game, "の受け入れテストの場合" do
  before do
    @game = Game::new
    [1,4,4,5,6,4,5,5,10,0,1,7,3,6,4,10,2,8,6].each {|pin| @game.roll(pin)}
  end

  it "スコアは133" do
    @game.score.should == 133
  end
end
