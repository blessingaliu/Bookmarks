require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  enable :sessions, :method_override

  get '/' do
    'View your bookmarks'
    erb(:index)
  end

  get '/add_bookmark' do
    erb(:new_bookmark)
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    p ENV
    
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  run! if app_file == $0
end