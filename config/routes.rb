Rails.application.routes.draw do
  
  resources :user_game_stars
  resources :user_playlist_stars
  resources :playlist_games
  resources :games
  resources :playlists
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
  get '/games/:date/:team', to 'games#check_game'

end
