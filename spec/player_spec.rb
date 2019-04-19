require 'player'

describe Player do
  let(:name) { double :name }
  let(:subject) { described_class.new(name)}

  describe '#initialize' do
    it 'assigns player name' do
      expect(subject.name).to eq name
    end
  end
end
