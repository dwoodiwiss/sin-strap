# Created by Darren Woodiwiss 2012
# woodiwiss.me

require 'sinatra'

not_found do
  status 404
  erb :no_page
end

get '/' do
  @title = "Home"

  erb :home
end

get '/form' do
  @title = "Form"

  erb :form
end

post '/form' do
  @title = "Form"
  @name = "#{params[:username]}"

  erb :user_list
end

get '/test' do
  @title = "Test"
  @alert = "This is a test alert"

  erb :test
end
