require 'sinatra'
require 'shotgun'

set :port, 8080

get '/' do
	'Hello world!'
end

get '/secret' do
	'This is a secret area!! Go away!'
end

get '/cat' do
	"<div style='border: 3px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
   </div>"
end

# shotgun app.rb -p 4567 // Once is installed sinatra with: gem install shotgun // run the following command and giving the default port
