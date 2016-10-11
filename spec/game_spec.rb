require 'game'
require 'player'

describe Game do

  player_1 = Player.new("Dave")
  player_2 = Player.new("Jen")

  subject(:game) { described_class.new(player_1, player_2) }

  describe '#player_1' do
    it 'retrieves player 1' do
      expect(subject.player_1). to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves player 2' do
      expect(subject.player_2). to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(subject.player_1).to receive(:reduce_health)
      subject.attack(subject.player_1)
    end

    it "changes dave's health by 10" do
      expect{subject.attack(subject.player_1)}.to change{subject.player_1.health}.by (-10)
    end
  end
end
