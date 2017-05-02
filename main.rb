require 'sinatra'
require 'sinatra/reloader' if development?

require './lib/caesar'


get '/' do
	key = params['key'] || 5
	message = params['message'] || 'Enter Your Message'
	processed = CaesarCipher.encrypt(message, key.to_i)

	erb :index, :locals => { 	:processed => processed, 
								:message => message }
end