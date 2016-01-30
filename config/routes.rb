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
resources :top, only: :index do
  collection do
  get 'search'
  get 'trainer_search'
end

end
resources :users, only: [:show, :edit, :update]
resources :trainers, only: [:show, :edit, :update]
resources :posts, only: :create
resources :answers, only: [:new,:create]
 post  'relationships/:id'      =>  'relationships#create'
 # :idでモデルの持つid情報を取得

root 'top#index'
end
