require 'bookmark'

describe Bookmark do

  it 'expects bookmark to respond to method .all' do
    expect(Bookmark).to respond_to { all }
  end

  describe '#all' do 
    it 'expects Bookmark.all to list bookmarks' do
      Bookmark.add_bookmark('http://www.makersacademy.com')
      Bookmark.add_bookmark('http://www.destroyallsoftware.com')
      expect(Bookmark.all).to eq ["http://www.makersacademy.com", "http://www.destroyallsoftware.com"]
    end
  end

  describe '#add_bookmark' do
    it 'adds the url to the database' do
      Bookmark.add_bookmark('http://www.yahoo.com')
      expect(Bookmark.all).to include('http://www.yahoo.com')
    end
  end

end
