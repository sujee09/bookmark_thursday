require 'bookmark'

describe Bookmark do
  let(:bookmark) { Bookmark.new }

  it 'expects bookmark is be an instance of the Bookmark class' do
    expect(bookmark).to be_an_instance_of(Bookmark)
  end

  it 'expects bookmark to respond to method .all' do
    expect(bookmark.all).to respond_to { all }
  end

  it 'expects bookmark to respond to method .all' do
    expect(bookmark.all).to eq ["https://makers.tech/", "https://devhints.io/vim"]
  end
end
