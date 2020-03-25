class GameSerializer < ActiveModel::Serializer
  attributes :id, :home, :away, :home_score, :away_score, :date, :playlists, :stars

  def playlists
    self.object.playlist_games.map do |g|
      g
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
