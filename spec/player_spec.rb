require 'player'

describe Player do
  let(:name) { double :name }
  let(:subject) { described_class.new(name) }
  let(:player) { described_class.new(name) }

  describe '#initialize' do
    it 'assigns player name' do
      expect(subject.name).to eq name
    end
    it 'starts with hp' do
      expect(subject.hp).to eq described_class::INITIAL_HP
    end
  end

  describe '#reduce_hp' do
    it 'reduces hp by 10' do
      expect{ subject.reduce_hp }.to change{ subject.hp }.by -10
    end
  end
end
