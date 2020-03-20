Rails.application.routes.draw do
  
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'

end
