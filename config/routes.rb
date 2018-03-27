Rails.application.routes.draw do
  
  root 'dashboard#dashboard'

  resources :folders, only: [:new, :create, :show, :destroy]
end
