require 'player'

describe Player do

  subject(:bill) { Player.new('Bill') }
  subject(:opponent) { Player.new('Opponent') }

  describe '#name' do
    it 'has a name' do
      expect(bill.name).to eq('Bill')
    end
  end

  describe '#hitpoints' do
    it 'returns hitpoints' do
      expect(bill.hp).to eq described_class::DEFAULT_HP
    end
  end
  
  describe '#damage' do
    it 'receives damage when attacked' do
      expect{ opponent.damage }.to change{ opponent.hp }.by -10
    end
  end

end
