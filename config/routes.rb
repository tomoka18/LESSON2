Rails.application.routes.draw do
  devise_for :users
  get 'home/about' => 'homes#about'
  root 'homes#top'

  resources :books
  resources :users,only: [:show,:index,:edit,:update]
end