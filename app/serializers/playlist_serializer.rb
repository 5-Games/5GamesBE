class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :user, :description, :playlist_games, :starred_users

  def user
    {
      username: self.object.user.username,
      userId: self.object.user.id
    }
  end

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
