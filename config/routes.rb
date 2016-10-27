Rails.application.routes.draw do

  get 'sessions/new'

  root 'users#index'
  get 'users/' => 'users#index'
  post 'users/' => 'users#create'
  get 'users/new' => 'users#new', as: :new_user
  get 'login/' => 'sessions#new'
  post 'login/' => 'sessions#create'
  delete 'logout/' => 'sessions#destroy'
  # get 'users/:id' => 'users#show'
  # get 'users/:id/edit'
  # patch
  # delete
end
