feature 'How close am I to winning' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Morty (100 HP)'
  end
end
