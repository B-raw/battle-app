require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player_one_name]
    @player2 = params[:player_two_name]
    erb(:play)
  end

  run! if app_file == $0
end
