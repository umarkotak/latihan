# game_spec.rb
require './latihan7_3.rb'

RSpec.describe Game do
  describe "#score" do
    it "returns 0 for new game" do
      game = Game.new
      expect(game.score).to eq(0)
    end
  end
end