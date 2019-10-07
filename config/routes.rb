Rails.application.routes.draw do
  # resources :witches
  resources :wizards
  resources :unicorns, only: [:index]
  root 'wizards#index'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
