class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user_id, :playlist_games, :starred_users

  def playlist_games
    self.object.playlist_games.map do |pg|
      {
        id: pg.id,
        game: pg.game,
        comment: pg.comment,
        rating: pg.rating,
      }
    end
  end

  def starred_users
    self.object.starred_users.map do |user|
      {
        id: user.id,
        username: user.username,
      }
    end
  end

end
