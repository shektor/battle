feature 'A personalised game' do
  scenario 'allow players to enter their names and see them' do
    sign_in_and_play
    expect(page).to have_content 'Rick vs Morty'
  end
end
