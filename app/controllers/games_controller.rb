class GamesController < ApplicationController
  def index
    @games = Game.all # Get all the games and saved them on @games
    render json: @games # Render all the games on JSON format
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end
end
