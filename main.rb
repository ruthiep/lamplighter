require "sinatra"
require "sinatra/activerecord"
require "json"
require "sqlite3"
require "pry"

set :database, {adapter: "sqlite3", database: "database/apts.db"}

require_relative 'database/db_setup'

require_relative "slide"

get "/" do
  erb :homepage
end


get "/slides/:id" do

  slide = Slide.find(params[:id])

  slide_hash = slide.to_hash
  slide_hash.to_json
end