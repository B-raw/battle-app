require 'player'

describe Player do

  subject(:jen) { described_class.new("Jen") }
  subject(:dave) { described_class.new('Dave') }

  describe '#name' do
    it 'returns name' do
      expect(jen.name).to eq "Jen"
    end
  end

  describe '#health' do
    it 'has initial health 60' do
      expect(subject.health).to eq described_class::DEFAULT_HEALTH
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(dave).to receive(:reduce_health)
      jen.attack(dave)
    end
  end

  describe '#reduce_health' do
    it 'will reduce player health points when attacked' do
      expect(dave.reduce_health).to change {dave.health}.by(-10)
    end
  end
end
