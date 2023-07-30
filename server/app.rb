require 'sinatra'
require 'sinatra/json'
require 'sinatra/reloader' if development?

require 'graphql'
require_relative './graphql/schema.rb'

post '/graphql' do
  result = Schema.execute(params[:query])
  json result 
end
