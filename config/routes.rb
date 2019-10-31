# frozen_string_literal: true

Rails.application.routes.draw do
  get 'cat/index'
  get 'cat/show'
  get 'breed/index'
  get 'breed/show'
  get 'trees/index'
  get 'trees/show'
  root to: 'pages#about'

  get 'pages/about', to: 'pages#about', as: 'about'
  resources :pages, only: :about
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
