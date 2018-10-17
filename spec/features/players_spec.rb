Capybara.app = Battle
feature 'new game' do

  scenario 'adds players' do
    visit('/')
    fill_in :player_one, with: "Bill"
    fill_in :player_two, with: "Someone"
    click_button 'Submit'
    expect(page).to have_content "Bill vs. Someone"
  end

end
