require 'player'

describe Player do

  it 'has a name' do
    player_one = Player.new('Bill')
    expect(player_one.name).to eq('Bill')
  end

end
