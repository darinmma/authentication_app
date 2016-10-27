Rails.application.routes.draw do

  root 'users#index'
  get 'users/' => 'users#index'
  post 'users/' => 'users#create'
  get 'users/new' => 'users#new', as: :new_user
  get 'users/:id' => 'users#show', as: :user
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

  get 'login/' => 'sessions#new'
  post 'login/' => 'sessions#create'
  delete 'logout/' => 'sessions#destroy'
  # get 'users/:id' => 'users#show'
  # get 'users/:id/edit'
  # patch
  # delete
end
