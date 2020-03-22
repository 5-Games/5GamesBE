class Game < ApplicationRecord
  has_many: playlist_games
  has_many: playlists, through: :playlist_games

  has_many: user_game_stars
  has_many: users, through: :user_game_stars
end
