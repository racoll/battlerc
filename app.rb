require "sinatra"
require "./lib/game"
require "./lib/player"


class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  # post '/names' do
  #   session[:player_1_name] = params[:player_1_name]
  #   session[:player_2_name] = params[:player_2_name]
  #   redirect "/play"
  # end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end


  # get "/play" do
  #   @player_1_name = session[:player_1_name]
  #   @player_2_name = session[:player_2_name]
  #   erb :play
  # end

  get '/play' do
    @game = $game
    erb :play
  end


  # get "/attack" do
  #   @player_1_name = session[:player_1_name]
  #   @player_2_name = session[:player_2_name]
  #   erb :attack
  # end

  get "/attack" do
    @game = $game
    @game.attack(@game.player_2)
    @game.switch_turns
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
