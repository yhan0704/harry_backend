Rails.application.routes.draw do
  resources :users
  resources :favorite_spells
  resources :favorite_characters
  resources :names
  resources :spells
  resources :characters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
