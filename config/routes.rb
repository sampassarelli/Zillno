Rails.application.routes.draw do

  resources :houses do
    resources :house_reviews, only: [:create, :delete]
    resources :offers, only: [:create, :delete]
    resources :tours, only: [:create, :delete]
  end

  resources :users, except: [:index, :delete]
  resources :agents, only: [:index, :show, :delete]
  
  root to:'sessions#index'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/login', to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#create', as: 'login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
