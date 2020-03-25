class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :playlists, :starred_playlists, :starred_games

  def playlists
    self.object.playlists.map do |playlist|
      playlist
    end
  end

  def starred_playlists
    self.object.starred_playlists.map do |sp|
      sp
    end
  end

  def starred_games
    self.object.games.map do |game|
      game
    end
  end

end
