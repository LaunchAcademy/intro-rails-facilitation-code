Rails.application.routes.draw do
  root 'wizards#index'
  
  # post "/wizards/search" to "/wizards/#search"
  
  resources :wizards, only: [:index, :show, :new, :create]

  resources :manticores, only: [:index, :show, :new]
end
