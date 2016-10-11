require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $new_game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @game = $new_game
    erb(:play)
  end

  get '/attack' do
    @game = $new_game
    @game.attack(@game.player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
