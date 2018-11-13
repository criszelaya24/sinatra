require 'sinatra'
require 'shotgun'

set :port, 8080

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

get '/named-cat' do
	@name = params[:name]
	erb(:index)
end

# shotgun app.rb -p 4567 // Once is installed sinatra with: gem install shotgun // run the following command and giving the default port
