require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:bill) { double :player }
  let(:opponent) { double :player }

  it 'starts game with two players' do
    # WRITE THIS TEST!!!!
  end

  describe '#attack' do
    it 'can attack opponent, causing damage' do
      allow(opponent).to receive(:damage)
      game.attack(opponent)
    end
  end

end
