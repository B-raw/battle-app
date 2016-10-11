require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new }

  dave = Player.new("Dave")

  describe '#attack' do
    it 'damages the player' do
      expect(dave).to receive(:reduce_health)
      subject.attack(dave)
    end

    it "changes dave's health by 10" do
      expect{subject.attack(dave)}.to change{dave.health}.by (-10)
    end
  end
end
