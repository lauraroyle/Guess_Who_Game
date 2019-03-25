Rails.application.routes.draw do
  resources :player_characteristics
  resources :players
  resources :characteristics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
