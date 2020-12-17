require 'pg'

feature 'delete bookmark' do
  scenario 'user deletes a bookmark' do
    visit '/bookmarks'
    fill_in('title', with: 'Yahoo')
    click_button('Delete')
    expect(page).not_to have_content('Yahoo')
  end
end
