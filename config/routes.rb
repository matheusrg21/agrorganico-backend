# frozen_string_literal: true

Rails.application.routes.draw do
  resources :shopping_lists
  resources :fruits
  resources :users
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
