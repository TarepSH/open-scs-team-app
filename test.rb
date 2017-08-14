#Imprts Sintra gem for webserver and DSL for our Ruby app
require 'sinatra'

# Imports the Google Cloud client library
require "google/cloud/vision"

# Your Google Cloud Platform project ID


#adding Sitra code here:
 get '/test' do
	erb :index
    end
  
post '/save_image' do

  @filename = params[:file][:filename]
  file = params[:file][:tempfile]

  File.open("./public/#{@filename}", 'wb') do |f|
    f.write(file.read)
  end

 erb :index
end
