class UsersController < ApplicationController

  def show
      user = User.find(params[:id])
      render json: {
          user: user, 
          playlists: user.playlists, 
          starred_playlists: user.starred_playlists, 
          starred_games: user.games }
  end

  def create
      user = User.create(user_params)
      byebug
      if user.valid?
          user = user
          token = JWT.encode({user_id: user.id}, secret, 'HS256')
          render json: {user: user, token: token}
      else
          render json: {errors: user.errors.full_messages}
      end
  end

  def update
      user = User.find(params[:id])
      user.update(user_params)
      render json: {user: user}
  end

  def destroy
      user = User.find(params[:id])
      user.destroy
  end

  private

  def user_params
      params.permit(:username, :password)
  end

end
