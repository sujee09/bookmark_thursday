require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    p @bookmarks
    erb :bookmarks
  end

  get '/add-bookmark' do
    erb :add_bookmark
  end

  post '/add-database' do
    p params
    @url = params[:url]
    @title = params[:title]
    Bookmark.add_bookmark(@url, @title)
    redirect '/bookmarks'
  end

  post '/delete-bookmark' do
    @title = params[:title]
    Bookmark.delete(@title)
    redirect '/bookmarks'
  end

  get '/update-bookmark-title' do
    erb :update_bookmark_title
  end

  get '/update-bookmark-url' do
    erb :update_bookmark_url
  end

  post '/update-database-title' do
    @url = params[:url]
    @title = params[:title]
    Bookmark.update_title(@url, @title)
    redirect '/bookmarks'
  end

  post '/update-database-url' do
    @url = params[:url]
    @title = params[:title]
    Bookmark.update_url(@url, @title)
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
