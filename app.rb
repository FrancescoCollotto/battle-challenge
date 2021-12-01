require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name_1] = params[:name_1]
    session[:name_2] = params[:name_2]
    redirect '/play'
  end

  get '/play' do
    @name_1 = session[:name_1]
    @name_2 = session[:name_2]
    erb :play
  end

  get '/attack' do
    "Chris attacked Francesco"
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end