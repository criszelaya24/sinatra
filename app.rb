require 'sinatra'
set :port, 8080

get '/' do
	'Hello world!'
end

get '/secret' do
	'This is a secret area!'
end