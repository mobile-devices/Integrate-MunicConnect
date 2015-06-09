Rails.application.routes.draw do
  resources :tasks

  get '/auth/munic/callback', to: 'sessions#create'
  #get '/auth/munic/callback', to: 'sessions#create_with_omniauth'      # if you already have your own session creation.
  get '/signout', to: 'sessions#destroy'

  root 'tasks#index'
end
