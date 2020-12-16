require 'bookmark'

describe Bookmark do

  it 'expects bookmark to respond to method .all' do
    expect(Bookmark).to respond_to { all }
  end

  describe '#all' do 
    it 'expects Bookmark.all to list bookmarks' do
      bookmark = Bookmark.add_bookmark('http://www.makersacademy.com', 'Makers')
      Bookmark.add_bookmark('http://www.destroyallsoftware.com', 'Destroy')
      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 2
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
      expect(bookmarks.first.title).to eq 'Makers'
    end
  end

  describe '#add_bookmark' do
    it 'adds the url to the database' do
      bookmark = Bookmark.add_bookmark('http://www.yahoo.com', 'Yahoo')
      expect(bookmark.url).to eq ('http://www.yahoo.com')
      expect(bookmark.title).to eq ('Yahoo')
    end
  end

end
