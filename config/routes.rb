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

root 'top#index'
end
