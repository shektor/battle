require 'game'

describe Game do
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }
  let(:subject) { described_class.new(player_1, player_2) }

  describe '#initialize' do
    it 'assigns two players' do
      expect(subject.player_1).to eq player_1
      expect(subject.player_2).to eq player_2
    end
    it 'starts with player 1 turn' do
      expect(subject.turn).to eq player_1
    end
  end

  describe '#attack' do
    it 'attacks another player' do
      expect(player_1).to receive(:reduce_hp)
      subject.attack(player_1)
    end
  end

  describe '#switch_roles' do
    it 'swaps the players turn' do
      subject.switch_roles
      expect(subject.turn).to eq player_2
    end
  end
end
