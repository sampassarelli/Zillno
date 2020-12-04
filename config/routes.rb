Rails.application.routes.draw do

  
  resources :tours, except: [:index]
  resources :offers, only: [:show, :new, :create]
  resources :houses do
    resources :house_reviews, only: [:index, :show] 
  end
  resources :house_reviews
  resources :users, except: [:index]
  resources :agents, only: [:index, :show]
  
  root to:'houses#index'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/login', to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#create', as: 'login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
