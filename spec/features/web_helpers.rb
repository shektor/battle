def sign_in_and_play
  visit '/'
  fill_in('player_1_name', with: 'Rick')
  fill_in('player_2_name', with: 'Morty')
  click_button('Submit')
end
