Rails.application.routes.draw do
  resources :tours
  resources :purchases
  resources :houses
  resources :users
  resources :agents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
