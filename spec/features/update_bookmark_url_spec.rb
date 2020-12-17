require 'pg'

feature 'update bookmark url' do
  scenario 'user updates a bookmark url' do
    Bookmark.add_bookmark('http://www.yahoo.com', 'Yahoo')
    visit '/update-bookmark-url'
    within('form') do
      fill_in('url', with: 'http://www.google.com')
      fill_in('title', with: 'Yahoo')
    end
    click_button('Update')
    expect(page).to have_content('Yahoo')
    expect(page).to have_link('Yahoo', href: 'http://www.google.com')
    expect(page).not_to have_link('Yahoo', href: 'http://www.yahoo.com')
  end
end
