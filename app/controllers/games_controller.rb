class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]

  def create
    @game = Game.create(game_params) 
    render json: @game
  end 
   def index 
    @games = Game.all
    render json: @games
  end 
   def update 
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game
  end 
   def show 
    @game = Game.find(params[:id])
    render json: @game 
  end 
   private 
   def game_params
    params.permit(state: [])
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
