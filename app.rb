require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    'All bookmarks'
  end

  get '/bookmarks' do 
    @bookmarks = Bookmark.new.all
    erb :bookmarks
  end

  run! if app_file == $0
end
