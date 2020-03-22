class PlaylistGame < ApplicationRecord
  belongs_to :game
  belongs_to :playlist
end
