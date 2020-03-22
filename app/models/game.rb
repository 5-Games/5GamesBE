class Game < ApplicationRecord
  # game.playlists returns a list of all playlists specific game belongs to
  has_many :playlist_games
  has_many :playlists, through: :playlist_games

  # game.users returns a list of all users who have starred the game
  has_many :user_game_stars
  has_many :users, through: :user_game_stars
end
