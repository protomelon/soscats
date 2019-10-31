# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'breeds#index'

  get 'pages/about', to: 'pages#about', as: 'about'

  # get '/breed/:id', to: 'breed#show', id: /\d+/
  # get '/tree/:id', to: 'tree#show', id: /\d+/
  # get '/cat/:id', to: 'cat#show', id: /\d+/

  # Not working?
  resources :trees, only: %i[index show]
  resources :breeds, only: %i[index show]
  resources :cats, only: %i[index show]
end
