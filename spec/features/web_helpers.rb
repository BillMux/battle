def sign_in_and_play
  visit('/')
  fill_in :player_one_name, with: "Bill"
  fill_in :player_two_name, with: "Someone"
  click_button 'Submit'
end
