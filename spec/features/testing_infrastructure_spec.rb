Capybara.app = Battle
# require_relative 'web_helpers'
feature 'new game' do

  scenario 'adds players' do
    sign_in_and_play
    expect(page).to have_content "Bill vs Someone"
  end

end
feature 'View HP' do

  scenario 'shows players HP' do
    sign_in_and_play
    expect(page).to have_content 'Someone: 100HP'
  end

end
feature 'attack' do

  scenario 'player one can attack player two' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Attack')
  end

  scenario 'player one attacks player two' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Bill attacked Someone')
  end

  scenario 'player two receives damage' do
    sign_in_and_play
    click_link 'Attack'
    # $player_two.damage
    expect(page).not_to have_content "Someone: 100HP"
    expect(page).to have_content "Someone: 90HP"
  end
end
