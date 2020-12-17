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
      expect(bookmark.url).to eq 'http://www.yahoo.com'
      expect(bookmark.title).to eq 'Yahoo'
    end
  end

  describe '#delete' do
    it 'deletes the url from the database' do
      bookmark = Bookmark.add_bookmark('http://www.yahoo.com', 'Yahoo')
      Bookmark.add_bookmark('http://www.destroyallsoftware.com', 'Destroy')
      bookmarks = Bookmark.delete('Yahoo')
      expect(Bookmark.all.length).to eq 1
    end
  end

  describe '#update_title' do
    it 'updates the bookmark in the database' do
      Bookmark.add_bookmark('http://www.yahoo.com', 'Yahoo')
      Bookmark.update_title('http://www.yahoo.com', 'Google')
      bookmarks = Bookmark.all
      expect(bookmarks.first.title).to eq 'Google'
      expect(bookmarks.first.url).to eq 'http://www.yahoo.com'
    end
  end

  describe '#update_url' do
    it 'updates the bookmark in the database' do
      Bookmark.add_bookmark('http://www.yahoo.com', 'Yahoo')
      Bookmark.update_url('http://www.google.com', 'Yahoo')
      bookmarks = Bookmark.all
      expect(bookmarks.first.title).to eq 'Yahoo'
      expect(bookmarks.first.url).to eq 'http://www.google.com'
    end
  end
end
