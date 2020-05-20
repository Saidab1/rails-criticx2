class GamesController < ApplicationController
  def index
    @games = Game.all # Get all the games and saved them on @games
    render json: @games # Render all the games on JSON format
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game
    else
      render json: @game.errors
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, :genre, :price, :release_date, :company_id)
  end
end
