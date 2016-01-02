Rails.application.routes.draw do

  root 'users#index', as: :users

  get 'users/new' => 'users#new', as: :new_user
  post '/' => 'users#create'

  get 'users/profile/:id' => 'user#id', as: :user_profile

  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions/new' => 'sessions#create', as: :create_session

  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session

  get 'targets/' => 'targets#index', as: :target

  get 'targets/new' => 'targets#new', as: :new_target
  post 'targets/new' => 'targets#create'

  get "posts/" => "posts#index", as: :post

  get "posts/new" => "posts#new", as: :new_post
  get "posts/:id/edit" => "posts#edit", as: :edit_post
  patch "posts/:id" => "posts#update"
  get "posts/:id" => "posts#show", as: :post_id

  delete "posts/:id" => "posts#destroy"

resources :posts
end
