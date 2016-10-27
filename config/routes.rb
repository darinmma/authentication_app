Rails.application.routes.draw do
  get 'users/' => 'users#index'
  post 'users/' => 'users#create'
  get 'users/new' => 'users#new'as: :new_user
  # get
  # get
  # patch
  # delete
end
