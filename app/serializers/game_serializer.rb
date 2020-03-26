class GameSerializer < ActiveModel::Serializer
  attributes :id, :home, :away, :home_score, :away_score, :date, :playlists, :stars

  def playlists
    self.object.playlist_games.map do |g|
      {
        id: g.id,
        comment: g.comment,
        playlist_id: g.playlist_id,
        title: g.playlist.title,
        comment: g.comment,
        rating: g.rating,
        created_at: g.created_at,
        updated_at: g.updated_at
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
