require 'sinatra'
get '/display/:age' do 
	@age = params['age'].to_i
	erb :agedesign
	
	
end