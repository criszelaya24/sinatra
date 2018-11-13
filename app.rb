require 'sinatra'
require 'shotgun'
# shotgun app.rb -p 4567 // Once is installed sinatra with: gem install shotgun // run the following command and giving the default port

set :port, 8080
# Here we are calling to the pages
get '/' do
	'Hello world!'
end

get '/secret' do
	'This is a secret area!! Go away!'
end

get '/random-cat' do
	@name = ["Amigo", "Oscar", "Viking"].sample
	erb(:index)
end

# POST AND GET method for name it the cat, the get is ofr accesing the user and the post
# is for sending information to it
post '/named-cat' do
	@name = params[:name] # is expecting a params and passing to the index
	erb(:index)
end

get '/named-cat' do
	@name = params[:name]
	erb(:index)
end

get '/cat-form' do
	erb(:cat_form)
end

# Part of my test
get '/testing' do
	erb(:testing)
end