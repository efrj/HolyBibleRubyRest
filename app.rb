require 'sinatra'
require "sinatra/json"
require "sqlite3"
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'db/KJV-PCE.db'
)

class Bible < ActiveRecord::Base
  self.table_name = "Bible"
end

get '/' do
  erb :index
end

get '/book/:book/chapter/:chapter' do
  book = Bible.find_by(BookAbr: params['book'], Chapter: params['chapter'])
  verses = Bible.where(["BookAbr = ?", params['book']]).where(["Chapter = ?", params['chapter']]).select("Verse as verse, VText as text").all
  json :book => book.BookName, :chapter => book.Chapter, :verses => verses
end

get '/book/:book/chapter/:chapter/verse/:verse' do
  book = Bible.find_by(BookAbr: params['book'], Chapter: params['chapter'],Verse: params['verse'])
  json :book => book.BookName, :chapter => book.Chapter, :verse => book.Verse, :text => book.VText
end
