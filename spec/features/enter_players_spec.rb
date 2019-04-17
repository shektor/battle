feature 'A personalised game' do
  scenario 'allow players to enter their names and see them' do
    visit '/'
    fill_in('player_1_name', with: 'Rick')
    fill_in('player_2_name', with: 'Morty')
    click_button('Submit')
    expect(page).to have_content 'Rick vs Morty'
  end
end

feature 'How close am I to winning' do
  scenario 'see Player 2 hit points' do
    visit '/'
    fill_in('player_1_name', with: 'Rick')
    fill_in('player_2_name', with: 'Morty')
    click_button('Submit')
    expect(page).to have_content 'Morty (100 HP)'
  end
end
