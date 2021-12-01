require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name_1])
    $player_2 = Player.new(params[:name_2])
    redirect '/play'
  end

  get '/play' do
    @name_1 = $player_1.name
    @name_2 = $player_2.name
    erb :play
  end

  get '/attack' do
    @name_1 = $player_1.name
    @name_2 = $player_2.name
    erb :attack
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end