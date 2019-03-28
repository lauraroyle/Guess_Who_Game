Rails.application.routes.draw do
  resources :players
  resources :games
  resources :game_questions

  #Custom routes
  get '/', to: 'application#welcome', as: 'welcome'
  get '/you_win', to: 'games#you_win', as: 'you_win'
  get '/you_lose', to: 'games#you_lose', as: 'you_lose'
  get '/rules', to: 'games#rules', as: 'rules'

  # user account management
  get '/signup', to: 'players#new', as: 'signup'
  post '/signup', to: 'players#create'
  # get '/players/:id', to: 'players#show', as: 'player'

  # sessions management
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'

end
