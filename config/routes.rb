Rails.application.routes.draw do
  root 'wizards#index'
  
  # post "/wizards/search" to "/wizards/#search"
  
  resources :wizards
  resources :monsters, only: :index
end
