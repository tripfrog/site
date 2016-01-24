Rails.application.routes.draw do

  devise_for :trainers, controllers: {
  sessions:      'trainers/sessions',
  passwords:     'trainers/passwords',
  registrations: 'trainers/registrations'
  }
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
  }

resources :identifications, only: :index
resources :top, only: :index
resources :posts, only: :create
resources :users, only: [:show, :edit, :update]
resources :trainers, only: [:show, :edit, :update]
root 'top#index'
end
