# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: 'jack', password: 'password')
admin = User.create(username: 'admin', password: 'admin')

game1 = Game.create(home: 'NYK', away: 'LAL', home_score: 100, away_score: 105, date: '2020-01-05')
game2 = Game.create(home: 'BOS', away: 'LAC', home_score: 99, away_score: 104, date: '2020-01-05')
game3 = Game.create(home: 'LAL', away: 'BOS', home_score: 109, away_score: 94, date: '2020-01-07')
game4 = Game.create(home: 'HOU', away: 'MIN', home_score: 119, away_score: 100, date: '2020-01-08')

playlist = Playlist.create(title: 'Sample Playlist 1', description: 'jack playlist', user_id: user.id)
playlist2 = Playlist.create(title: 'Sample Playlist 2', description: 'admin playlist', user_id: admin.id)

PlaylistGame.create(game_id: game1.id, playlist_id: playlist.id, comment: 'test comment', rating: 8)
PlaylistGame.create(game_id: game2.id, playlist_id: playlist.id, comment: 'another test comment', rating: 9)
PlaylistGame.create(game_id: game3.id, playlist_id: playlist2.id, comment: 'admins game', rating: 9)
PlaylistGame.create(game_id: game4.id, playlist_id: playlist2.id, comment: 'another admin comment', rating: 5)
PlaylistGame.create(game_id: game1.id, playlist_id: playlist2.id, comment: 'more admin test comment', rating: 10)

UserGameStar.create(user_id: user.id, game_id: game3.id)
UserGameStar.create(user_id: admin.id, game_id: game1.id)

UserPlaylistStar.create(user_id: user.id, playlist_id: playlist2.id)

puts 'seeded'