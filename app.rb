require "sinatra/base"

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/info' do
    session[:name] = params[:name]
    erb :index
    redirect '/greeting'
  end

  get '/greeting' do
    @name = session[:name]
    erb :greeting
  end
end