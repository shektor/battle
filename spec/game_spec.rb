require 'game'

describe Game do
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }
  let(:subject) { described_class.new(player_1, player_2) }

  describe '#initialize' do
    it 'assigns two players' do
      expect(subject.player_1).to eq player_1
      expect(subject.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'attacks another player' do
      expect(player_1).to receive(:reduce_hp)
      subject.attack(player_1)
    end
  end
end
