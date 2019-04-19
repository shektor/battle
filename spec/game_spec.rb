require 'game'

describe Game do
  let(:player) { double(:player)}
  describe '#attack' do
    it 'attacks another player' do
      expect(player).to receive(:reduce_hp)
      subject.attack(player)
    end
  end
end
