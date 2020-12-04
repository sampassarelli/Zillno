Rails.application.routes.draw do

  resources :houses do
    resources :house_reviews
    resources :offers
    resources :tours
  end

  resources :offers
  resources :tours
  resources :house_reviews
  resources :users, except: [:index]
  resources :agents, only: [:index, :show]
  
  root to:'houses#index'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/login', to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#create', as: 'login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
