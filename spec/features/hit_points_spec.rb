feature 'View HP' do

  scenario 'shows player 2 HP' do
    visit('/')
    fill_in :player_one, with: 'Bill'
    fill_in :player_two, with: 'Opponent'
    click_button 'Submit'
    expect(page).to have_content 'Opponent: 100HP'
  end

end
