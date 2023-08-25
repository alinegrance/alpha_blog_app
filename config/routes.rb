Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy] # every route is here now
  resources :articles # resources provides REST-ful routes to Rails resources
  # REST - Representational state transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions
  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  resources :users, except: [:new]
end


