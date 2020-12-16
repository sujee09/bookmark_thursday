require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/add-bookmark' do
    erb :add_bookmark
  end

  post '/update-database' do
    p params
    @url = params[:url]
    Bookmark.add_bookmark(@url)
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
