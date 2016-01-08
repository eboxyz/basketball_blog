Rails.application.routes.draw do

  root 'users#index', as: :users

  resources :posts do
   resources :comments
  end

  namespace :api do
    resources :videos, only: [:index, :show, :create, :update, :destroy]
  end

  get 'users/new' => 'users#new', as: :new_user
  post '/' => 'users#create'

  get "users/:id/edit" => "users#edit", as: :edit_user
  patch "users/:id" => "users#update"

  get "users/:id" => "users#show", as: :user
  get 'users/:id/new_post' => 'posts#new', as: :add_post

  get 'users/profile/:id' => 'user#id', as: :user_profile

  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions/new' => 'sessions#create', as: :create_session

  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session

  get 'targets/' => 'targets#index', as: :target

  get 'targets/new' => 'targets#new', as: :new_target
  post 'targets/new' => 'targets#create'




end
