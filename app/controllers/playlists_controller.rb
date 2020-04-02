class PlaylistsController < ApplicationController

  def index
    playlists = Playlist.all
    render json: playlists
  end 

  def show
    playlist = Playlist.find(params[:id])
    render json: playlist
  end

  def create
    byebug
    user = User.find(params[:userId])
    playlist_params = params[:playlist]
    playlist = Playlist.create(title: playlist_params[:title], description: playlist_params[:description], user: user)
    if playlist.valid?
      # were the games created??? need to loop through all the games and run the check
      playlist_params[:games].each do |game|
        game = Game.find_by(game[:id])
        if !game
          game = Game.create_new_game(params[:date], params[:team])
        end
      end
      render json: playlist
    else
      render json: { errors: playlist.errors.full_messages }
    end
    # playlist = Playlist.create(playlist_params)
    # if playlist.valid?
    #   render json: playlist
    # else
    #   render json: { errors: playlist.errors.full_messages }
    # end
  end

  def update
    playlist = Playlist.find(params[:id])
    if playlist.update(playlist_params)
      render json: playlist
    else
      render json: playlist.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Playlist.destroy(params[:id])
  end

  private

  def playlist_params
    params.require(:playlist).permit(:title, :description, :user_id)
  end

end
