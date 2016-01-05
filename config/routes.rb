Rails.application.routes.draw do

  root 'users#index', as: :users
  resources :users, :posts

  namespace :api do
    resources :videos, only: [:index, :show, :create, :update, :destroy]
  end


  get 'users/profile/:id' => 'user#id', as: :user_profile

  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions/new' => 'sessions#create', as: :create_session

  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session

  get 'targets/' => 'targets#index', as: :target

  get 'targets/new' => 'targets#new', as: :new_target
  post 'targets/new' => 'targets#create'




end
