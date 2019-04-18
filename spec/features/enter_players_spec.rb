feature 'A personalised game' do
  scenario 'allow players to enter their names and see them' do
    sign_in_and_play
    expect(page).to have_content 'Rick vs Morty'
  end
end

feature 'How close am I to winning' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Morty (100 HP)'
  end
end

feature 'Win a game' do
  scenario 'attack Player 2 and receive confirmation' do
    sign_in_and_play
    click_link('Attack Morty')
    expect(page).to have_content 'Morty was just attacked!'
  end
end
