feature 'Win a game' do
  scenario 'attack Player 2 and receive confirmation' do
    sign_in_and_play
    click_link('Attack Morty')
    expect(page).to have_content 'Morty was just attacked!'
  end
end

feature '2 player game of Battle' do
  scenario 'switch roles' do
    sign_in_and_play
    click_link('Attack Morty')
    expect(page).to have_content 'Attack Rick'
  end
end
