require 'bundler/setup'
require 'sinatra'

require 'sass'
require 'coffee-script'
require './forecast.rb'

get '/' do
  @weather = "What is it like outside?"
  erb :index
end

post '/' do
  @weather = current_weather(params[:location])
  erb :index
end
