require 'sinatra'
require 'sinatra/reloader'
require './lib/cd'
also_reload 'lib/**/*.rb'

get '/' do
  erb :index
end

get '/list_titles' do
  @titles = CD.all
  erb :list_titles
end

post '/list_titles' do
  @title = CD.new(params.fetch('title'))
  @title.save
  redirect '/list_titles'
  erb :list_titles
end
