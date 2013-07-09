MyCal::Application.routes.draw do

  root to: 'users#show'

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :users, only: [:show, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :groups, only: [:show, :new, :create]
end
