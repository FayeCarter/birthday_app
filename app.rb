require "sinatra/base"
require './lib/calculator'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/info' do
    session[:input] = "#{params[:month]}/#{params[:day]}"    
    session[:name] = params[:name]
    erb :index
    redirect '/greeting'
  end

  get '/greeting' do
    @calculator = Calculator.new(session[:input])
    @message = @calculator.difference
    @name = session[:name]
    erb :greeting
  end
end