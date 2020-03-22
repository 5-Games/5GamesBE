class Playlist < ApplicationRecord
  belongs_to :user
  has_many :playlist_games

  # differentiating starred playlist relationship with user
  has_many :user_playlist_stars
  has_many :starred_users, through: :user_playlist_stars, source: :user
end
