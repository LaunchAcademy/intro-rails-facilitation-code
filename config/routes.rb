Rails.application.routes.draw do
  root 'wizards#index'

  # post "/wizards/search" to "/wizards/#search"
  
  resources :wizards, only: [:index, :show, :new, :create, :edit, :update] do
    resources :spells, only: [:new, :create]
  end

end
