require 'pg'

feature 'update bookmark title' do
  scenario 'user updates a bookmark title' do
    Bookmark.add_bookmark('http://www.yahoo.com', 'Yahoo')
    visit '/update-bookmark-title'
    within('form') do
      fill_in('url', with: 'http://www.yahoo.com')
      fill_in('title', with: 'Google')
    end
    click_button('Update')
    expect(page).to have_content('Google')
    expect(page).not_to have_content('Yahoo')
  end
end