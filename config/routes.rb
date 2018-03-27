Rails.application.routes.draw do

  root 'dashboard#dashboard'

  resources :folders, only: [:new, :create, :show, :destroy]
  resources :user_files, only: [:new, :create]
end
