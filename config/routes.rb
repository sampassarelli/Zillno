Rails.application.routes.draw do

  root to:'houses#index'
  
  resources :tours, except: [:index]
  resources :offers, only: [:show, :new, :create]
  resources :houses do
    resources :house_reviews, only: [:index, :show] 
  end
  resources :house_reviews
  resources :users, except: [:index]
  resources :agents, only: [:index, :show]
  

  delete '/sessions/page_reset', to: 'sessions#page_reset', as: 'page_reset'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions', to: 'sessions#create', as: 'login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
