class UserGameStarsController < ApplicationController

  def show
    user_game_star = UserGameStar.find(params[:id])
    render json: user_game_star
  end

  def create
    user_game_star = UserGameStar.create(user_game_star_params)
    if user_game_star.valid?
      render json: user_game_star
    else
      render json: { errors: game.errors.full_messages }
    end
  end

  def destroy
    UserGameStar.destroy(params[:id])
  end

  private

  def user_game_star_params
    params.require(:user_game_star).permit(:user_id, :game_id)
  end

end
