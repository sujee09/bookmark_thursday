feature 'Bookmarks page' do
  scenario 'can view all bookmarks in the bookmarks page' do
    visit '/bookmarks'
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end 
