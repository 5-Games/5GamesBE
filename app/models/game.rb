require 'rest-client'

class Game < ApplicationRecord
  # game.playlists returns a list of all playlists specific game belongs to
  has_many :playlist_games
  has_many :playlists, through: :playlist_games

  # game.users returns a list of all users who have starred the game
  has_many :user_game_stars
  has_many :users, through: :user_game_stars

  def self.create_new_game(date, home_team)
    team = Team.find_by(abbreviation: home_team)
    team_id = team["id"]
    url = "https://www.balldontlie.io/api/v1/games?team_ids[]=#{team_id}&start_date=#{date}&end_date=#{date}"
    request = RestClient::Request.execute(
      method: :get,
      url: url
    )
    response = JSON.parse(request)
    game = response["data"][0]
    Game.create(
      id: game["id"],
      home: game["home_team"]["abbreviation"], 
      away: game["visitor_team"]["abbreviation"],
      home_score: game["home_team_score"],
      away_score: game["visitor_team_score"],
      date: date,
    )
  end

end
