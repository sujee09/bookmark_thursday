require 'pg'

feature 'delete bookmark' do
  scenario 'user deletes a bookmark' do
    Bookmark.add_bookmark('http://www.yahoo.com', 'Yahoo')
    visit '/bookmarks'
    fill_in('title', with: 'Yahoo')
    click_button('Delete')
    expect(page).not_to have_content('Yahoo')
  end
end
