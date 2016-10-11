require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to('/play')
  end

  get '/play' do
    @attack_successful = session[:attack_successful]
    erb(:play)
  end

  post '/attack'do
    session[:attack_successful] = true
    redirect to ('/play')
  end

  run! if app_file == $0
end
