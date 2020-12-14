feature 'Bookmarks page' do
  scenario 'can view all bookmarks in the /bookmarks page' do
    visit '/bookmarks'
    expect(page).to have_content 'https://makers.tech/'
  end
end 
