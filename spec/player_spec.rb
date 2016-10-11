require 'player'

describe Player do

  subject { described_class.new("Jen") }

  describe '#name' do
    it 'returns name' do
      expect(subject.name).to eq "Jen"
    end
  end
end
