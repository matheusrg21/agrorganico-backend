# frozen_string_literal: true

Rails.application.routes.draw do
  resources :fruits
  resources :users
  resources :shopping_lists

  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
