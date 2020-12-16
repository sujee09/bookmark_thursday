require 'pg'

feature 'Bookmarks page' do
  scenario 'can view all bookmarks in the bookmarks page' do
    visit '/add-bookmark'
    within('form') do
      fill_in('url', with: 'http://www.yahoo.com')
      fill_in('title', with: 'Yahoo')
    end
    click_button('Submit')
    expect(page).to have_content "Yahoo"
  end
end 
