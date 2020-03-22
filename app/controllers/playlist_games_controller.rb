class PlaylistGamesController < ApplicationController

  def show
    playlist_game = PlaylistGame.find(params[:id])
    render json: playlist_game
  end

  def create
    playlist_game = Playlist.create(playlist_game_params)
  end

  def update
    playlist_game = Playlist.find(params[:id])
    if playlist_game.update(playlist_game_params)
      render json: playlist_game
    else
      render json: playlist_game.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Playlist.destroy(params[:id])
  end

  private

  def playlist_game_params
    params.require(:playlist_game).permit(:game_id, :playlist_id, :comment, :rating)
  end
end
