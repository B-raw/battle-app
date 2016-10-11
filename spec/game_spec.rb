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
  end
end
