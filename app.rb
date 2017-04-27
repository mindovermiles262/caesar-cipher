require 'sinatra'
require 'sinatra/reloader' if development?

require './lib/caesar'

get '/' do
	message = CaesarCipher.encrypt("What a string!", 5)
	erb :index, :locals => { :message => message }
end