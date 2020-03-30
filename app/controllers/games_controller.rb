class GamesController < ApplicationController

  def index
    games = Game.all
    render json: games
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def create
    game = Game.create(game_params)
    if game.valid?
      render json: game
    else
      render json: { errors: game.errors.full_messages }
    end
  end

  def update
    game = Game.find(params[:id])
    if game.update(game_params)
      render json: game
    else
      render json: game.errors, status: :unprocessable_entity
    end
  end

  def check_game
    byebug
  end

  private

  def game_params
    params.require(:game).permit(:home, :away, :home_score, :away_score, :date)
  end

end
