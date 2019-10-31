# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'cat#index'

  resources :pages
  get 'pages/about', to: 'pages#about', as: 'about'

  resources :trees, only: %i[index show]
  resources :breeds, only: %i[index show]
  resources :cats, only: %i[index show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
