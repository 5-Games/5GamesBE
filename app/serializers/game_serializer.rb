class GameSerializer < ActiveModel::Serializer
  attributes :id, :home, :away, :home_score, :away_score, :date, :playlists, :stars

  def playlists
    self.object.playlist_games.map do |g|
      {
        playlist: g.playlist,
        comment: g.comment,
        rating: g.rating,
      }
    end
  end

  def stars
    self.object.users.map do |user|
      { 
        id: user.id,
        username: user.username 
      }
    end
  end

end
