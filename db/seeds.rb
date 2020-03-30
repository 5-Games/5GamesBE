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

teams_arr = [
  {
    "id": 1,
    "abbreviation": "ATL",
    "city": "Atlanta",
    "conference": "East",
    "division": "Southeast",
    "full_name": "Atlanta Hawks",
    "name": "Hawks"
  },
  {
    "id": 2,
    "abbreviation": "BOS",
    "city": "Boston",
    "conference": "East",
    "division": "Atlantic",
    "full_name": "Boston Celtics",
    "name": "Celtics"
  },
  {
    "id": 3,
    "abbreviation": "BKN",
    "city": "Brooklyn",
    "conference": "East",
    "division": "Atlantic",
    "full_name": "Brooklyn Nets",
    "name": "Nets"
  },
  {
    "id": 4,
    "abbreviation": "CHA",
    "city": "Charlotte",
    "conference": "East",
    "division": "Southeast",
    "full_name": "Charlotte Hornets",
    "name": "Hornets"
  },
  {
    "id": 5,
    "abbreviation": "CHI",
    "city": "Chicago",
    "conference": "East",
    "division": "Central",
    "full_name": "Chicago Bulls",
    "name": "Bulls"
  },
  {
    "id": 6,
    "abbreviation": "CLE",
    "city": "Cleveland",
    "conference": "East",
    "division": "Central",
    "full_name": "Cleveland Cavaliers",
    "name": "Cavaliers"
  },
  {
    "id": 7,
    "abbreviation": "DAL",
    "city": "Dallas",
    "conference": "West",
    "division": "Southwest",
    "full_name": "Dallas Mavericks",
    "name": "Mavericks"
  },
  {
    "id": 8,
    "abbreviation": "DEN",
    "city": "Denver",
    "conference": "West",
    "division": "Northwest",
    "full_name": "Denver Nuggets",
    "name": "Nuggets"
  },
  {
    "id": 9,
    "abbreviation": "DET",
    "city": "Detroit",
    "conference": "East",
    "division": "Central",
    "full_name": "Detroit Pistons",
    "name": "Pistons"
  },
  {
    "id": 10,
    "abbreviation": "GSW",
    "city": "Golden State",
    "conference": "West",
    "division": "Pacific",
    "full_name": "Golden State Warriors",
    "name": "Warriors"
  },
  {
    "id": 11,
    "abbreviation": "HOU",
    "city": "Houston",
    "conference": "West",
    "division": "Southwest",
    "full_name": "Houston Rockets",
    "name": "Rockets"
  },
  {
    "id": 12,
    "abbreviation": "IND",
    "city": "Indiana",
    "conference": "East",
    "division": "Central",
    "full_name": "Indiana Pacers",
    "name": "Pacers"
  },
  {
    "id": 13,
    "abbreviation": "LAC",
    "city": "LA",
    "conference": "West",
    "division": "Pacific",
    "full_name": "LA Clippers",
    "name": "Clippers"
  },
  {
    "id": 14,
    "abbreviation": "LAL",
    "city": "Los Angeles",
    "conference": "West",
    "division": "Pacific",
    "full_name": "Los Angeles Lakers",
    "name": "Lakers"
  },
  {
    "id": 15,
    "abbreviation": "MEM",
    "city": "Memphis",
    "conference": "West",
    "division": "Southwest",
    "full_name": "Memphis Grizzlies",
    "name": "Grizzlies"
  },
  {
    "id": 16,
    "abbreviation": "MIA",
    "city": "Miami",
    "conference": "East",
    "division": "Southeast",
    "full_name": "Miami Heat",
    "name": "Heat"
  },
  {
    "id": 17,
    "abbreviation": "MIL",
    "city": "Milwaukee",
    "conference": "East",
    "division": "Central",
    "full_name": "Milwaukee Bucks",
    "name": "Bucks"
  },
  {
    "id": 18,
    "abbreviation": "MIN",
    "city": "Minnesota",
    "conference": "West",
    "division": "Northwest",
    "full_name": "Minnesota Timberwolves",
    "name": "Timberwolves"
  },
  {
    "id": 19,
    "abbreviation": "NOP",
    "city": "New Orleans",
    "conference": "West",
    "division": "Southwest",
    "full_name": "New Orleans Pelicans",
    "name": "Pelicans"
  },
  {
    "id": 20,
    "abbreviation": "NYK",
    "city": "New York",
    "conference": "East",
    "division": "Atlantic",
    "full_name": "New York Knicks",
    "name": "Knicks"
  },
  {
    "id": 21,
    "abbreviation": "OKC",
    "city": "Oklahoma City",
    "conference": "West",
    "division": "Northwest",
    "full_name": "Oklahoma City Thunder",
    "name": "Thunder"
  },
  {
    "id": 22,
    "abbreviation": "ORL",
    "city": "Orlando",
    "conference": "East",
    "division": "Southeast",
    "full_name": "Orlando Magic",
    "name": "Magic"
  },
  {
    "id": 23,
    "abbreviation": "PHI",
    "city": "Philadelphia",
    "conference": "East",
    "division": "Atlantic",
    "full_name": "Philadelphia 76ers",
    "name": "76ers"
  },
  {
    "id": 24,
    "abbreviation": "PHX",
    "city": "Phoenix",
    "conference": "West",
    "division": "Pacific",
    "full_name": "Phoenix Suns",
    "name": "Suns"
  },
  {
    "id": 25,
    "abbreviation": "POR",
    "city": "Portland",
    "conference": "West",
    "division": "Northwest",
    "full_name": "Portland Trail Blazers",
    "name": "Trail Blazers"
  },
  {
    "id": 26,
    "abbreviation": "SAC",
    "city": "Sacramento",
    "conference": "West",
    "division": "Pacific",
    "full_name": "Sacramento Kings",
    "name": "Kings"
  },
  {
    "id": 27,
    "abbreviation": "SAS",
    "city": "San Antonio",
    "conference": "West",
    "division": "Southwest",
    "full_name": "San Antonio Spurs",
    "name": "Spurs"
  },
  {
    "id": 28,
    "abbreviation": "TOR",
    "city": "Toronto",
    "conference": "East",
    "division": "Atlantic",
    "full_name": "Toronto Raptors",
    "name": "Raptors"
  },
  {
    "id": 29,
    "abbreviation": "UTA",
    "city": "Utah",
    "conference": "West",
    "division": "Northwest",
    "full_name": "Utah Jazz",
    "name": "Jazz"
  },
  {
    "id": 30,
    "abbreviation": "WAS",
    "city": "Washington",
    "conference": "East",
    "division": "Southeast",
    "full_name": "Washington Wizards",
    "name": "Wizards"
  }
]

teams_arr.each do |team|
  Team.create(id: team[:id], abbreviation: team[:abbreviation], city: team[:city], conference: team[:conference], division: team[:division], full_name: team[:full_name], name: team[:name])
end

puts 'seeded'
