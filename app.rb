require 'sinatra'
require "sinatra/json"
require_relative "services/books_service"

get '/' do
  erb :index
end

get '/editions' do
  data = BooksService.editions
  json data
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