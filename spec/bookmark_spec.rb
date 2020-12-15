require 'bookmark'

describe Bookmark do

  it 'expects bookmark to respond to method .all' do
    expect(Bookmark).to respond_to { all }
  end

  describe '#all' do 
    it 'expects Bookmark.all to list bookmarks' do
      con = PG.connect(dbname: 'bookmark_manager_test')
      con.exec "INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');"
      con.exec "INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');"
      expect(Bookmark.all).to eq ["http://www.makersacademy.com", "http://www.destroyallsoftware.com"]
    end
  end
end
