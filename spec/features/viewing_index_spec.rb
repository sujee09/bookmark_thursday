feature 'Viewing the index of bookmarks' do
  scenario 'homepage is displaying' do
    visit '/'
    expect(page).to have_content "All bookmarks"
  end
end
