require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions


  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1_name]),Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.get
    erb(:play)
  end

  get '/attack' do
    @game = Game.get
    @game.attack(@game.player_2)
    @game.switch_roles
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
