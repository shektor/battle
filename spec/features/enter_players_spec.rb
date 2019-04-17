feature 'A personalised game' do
  scenario 'allow players to enter their names and see them' do
    visit '/'
    fill_in('player1', with: 'Bob')
    fill_in('player2', with: 'Geldof')
    click_button('Submit')
    expect(page).to have_content 'Bob Geldof'
  end
end
