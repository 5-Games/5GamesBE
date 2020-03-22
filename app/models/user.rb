class User < ApplicationRecord
  # has_secure_password authenticates passwords with bcrypt
  has_secure_password

  # Make sure all user names are unique
  validates :username, uniqueness: true

  has_many :playlists 
  # Differentiating "starred" relationship to regular "has_many" relationship to playlist
  has_many :starred_as_user, class_name: "UserPlaylistStar", foreign_key: "user_id"
  has_many :starred_playlists, through: :starred_as_user, source: :playlist

  # Creating relationship between user and starred game
  has_many :user_game_stars
  has_many :games, through: :user_game_stars
end