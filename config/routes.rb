Rails.application.routes.draw do

  root 'users#index', as: :users
  resources :posts

  namespace :api do
    resources :videos, only: [:index, :show, :create, :update, :destroy]
  end

  get 'users/:id/new_post' => 'posts#new', as: :add_post
  get 'users/new' => 'users#new', as: :new_user
  post '/' => 'users#create'

  get 'users/profile/:id' => 'user#id', as: :user_profile

  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions/new' => 'sessions#create', as: :create_session

  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session

  get 'targets/' => 'targets#index', as: :target

  get 'targets/new' => 'targets#new', as: :new_target
  post 'targets/new' => 'targets#create'




end
