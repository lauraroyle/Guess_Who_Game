Rails.application.routes.draw do
  resources :players, except: [:new]
  resources :games
  resources :game_questions

  #Custom routes
  get '/', to: 'application#welcome', as: 'welcome'
  # get '/you_win', to: 'games#you_win', as: 'you_win'
  # get '/you_lose', to: 'games#you_lose', as: 'you_lose'    Do I need these routes? I just want the views for these pages to be rendered at the end of a game
  get '/rules', to: 'games#rules', as: 'rules'
  get '/start_game', to: 'games#create'


  # user account management
  get '/signup', to: 'players#new', as: 'signup'
  post '/signup', to: 'players#create'

  # sessions management
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'

end
