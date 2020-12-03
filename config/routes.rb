Rails.application.routes.draw do
  resources :house_reviews
  resources :tours, except: [:index]
  resources :offers, only: [:show, :new, :create]
  resources :houses
  resources :users, except: [:index]
  resources :agents, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
