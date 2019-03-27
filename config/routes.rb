Rails.application.routes.draw do
  resources :player_characteristics
  resources :characteristics
  resources :questions
  resources :eye_colours
  resources :hair_colours
  resources :players
  resources :games
  resources :game_characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
