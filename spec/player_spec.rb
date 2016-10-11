require 'player'

describe Player do

  subject { described_class.new("Jen") }

  describe '#name' do
    it 'returns name' do
      expect(subject.name).to eq "Jen"
    end
  end

  describe '#health' do
    it 'has initial health 60' do
      expect(subject.health).to eq 60
    end
  end

  describe '#reduce_health' do
    it 'will reduce player health points when attacked' do
      expect(subject.reduce_health).to eq 50
    end
  end
end
