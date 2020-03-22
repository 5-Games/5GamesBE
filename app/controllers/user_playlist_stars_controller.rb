class UserPlaylistStarsController < ApplicationController

  def show
    user_playlist_star = UserPlaylistStar.find(params[:id])
    render json: user_playlist_star
  end

  def create
    user_playlist_star = UserPlaylistStar.create(user_playlist_star_params)
    if user_playlist_star.valid?
      render json: user_playlist_star
    else
      render json: { errors: user_playlist_star.errors.full_messages }
    end
  end

  def destroy
    UserPlaylistStar.destroy(params[:id])
  end

  private

  def user_playlist_star_params
    params.require(:user_playlist_star_params).permit(:user_id, :playlist_id)
  end
  
end
