require 'sinatra'
require "sinatra/json"
require_relative "services/books_service"
require_relative "models/bible"

get '/' do
  erb :index
end

post '/bible-verses' do
  data = BooksService.find_verses(
    params[:edition],
    params[:book],
    params[:chapter],
    params[:verse]
  )
  json data
end