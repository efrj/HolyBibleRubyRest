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

get '/book/:book/chapter/:chapter/verse/:verse' do
    verses = params['verse'].split('-')
    book = Bible.find_by(BookAbr: params['book'], Chapter: params['chapter'], Verse: params['verse'])
    json :book => book.BookName, :chapter => book.Chapter, :verse => book.Verse
end