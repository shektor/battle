feature 'How close am I to winning' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Morty (100 HP)'
  end
end

feature 'To win a game of Battle' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link('Attack Morty')
    expect(page).not_to have_content 'Morty (100 HP)'
    expect(page).to have_content 'Morty (90 HP)'
  end
end
