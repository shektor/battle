feature 'Testing infrastructure' do
  scenario "returns text" do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
