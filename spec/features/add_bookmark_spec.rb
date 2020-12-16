require 'pg'

feature 'add bookmark' do
  scenario 'user adds a new bookmark' do
    visit '/add-bookmark'
    within('form') do
      fill_in('url', with: 'http://www.yahoo.com')
      fill_in('title', with: 'Yahoo')
    end
    click_button('Submit')
    expect(page).to have_content('Yahoo')
  end
end
