Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy] # every route is here now
  resources :articles # resources provides REST-ful routes to Rails resources
  # REST - Representational state transfer - mapping HTTP verbs (get, post, put/patch, delete) to CRUD actions
  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  resources :users, except: [:new]
  # sessions wont have full crud so wont have a 'resources'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end


