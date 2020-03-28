# Auth Controller manages separation of concerns
# User CRUD actions are on users table 
# Auth controller handles login and persisting the user

class AuthController < ApplicationController
    
    def login
        user = User.find_by(username: login_params[:username])
        # byebug
        if user && user.authenticate(login_params[:password])
            token = JWT.encode({user_id: user.id}, secret, 'HS256')
            render json: {
                user: user,
                user_starred_games: user.games,
                playlists: user.playlists,
                starred_playlists: user.starred_playlists, 
                token: token,}
        else
            render json: {errors: "Could Not Login"}
        end
    end

    def persist
        if request.headers['Authorization']
            encoded_token = request.headers['Authorization'].split(' ')[1]
            token = JWT.decode(encoded_token, secret)
            user_id = token[0]['user_id']
            user = User.find(user_id)
            render json: {
                user: user,
                user_starred_games: user.games,
                playlists: user.playlists,
                starred_playlists: user.starred_playlists,
            }
        end
    end

    private

    def login_params
        params.require(:auth).permit(:username, :password)
    end

end
