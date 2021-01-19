require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat' do
  erb(:index)
end
