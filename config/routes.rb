# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'trees#index'

  get 'pages/about', to: 'pages#about', as: 'about'
  get 'breed/index', to: 'breeds#index', as: 'breeds'
  get 'cat/index', to: 'cats#index', as: 'cats'

  # get '/breed/:id', to: 'breed#show', id: /\d+/
  # get '/tree/:id', to: 'tree#show', id: /\d+/
  # get '/cat/:id', to: 'cat#show', id: /\d+/

  # Not working?
  resources :breeds, only: %i[index show]
  resources :cat, only: %i[index show] do
    collection do
      get 'search_results'
    end
  end
  resources :trees, only: %i[index show]
end
