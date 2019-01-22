require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

# get '/' do
#   "Hello World!"
# end
#
# get '/secret' do
#   'Working!'
# end
#
# get '/home' do
#   "I'm home"
# end

# get '/random-cat' do
#   @name = ["Amigo", "Oscar", "Viking"].sample
#   erb(:index)
# end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
