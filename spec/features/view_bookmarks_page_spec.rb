require 'pg'

feature 'Bookmarks page' do
  scenario 'can view all bookmarks in the bookmarks page' do
    con = PG.connect(dbname: 'bookmark_manager_test')
    con.exec "INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');"
    con.exec "INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');"
    visit '/bookmarks'
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end 
