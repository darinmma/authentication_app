Rails.application.routes.draw do
  get 'users/' => 'users#index'
  post 'users/' => 'users#create'
  get 'users/new' => 'users#new', as: :new_user
  # get 'users/:id' => 'users#show'
  # get
  # patch
  # delete
end
