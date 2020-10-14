Rails.application.routes.draw do
  resources :wizards do 
    resources :spells, only: [:new, :create]
  end
  
  root 'wizards#index'

  resources :centaurs, only: [:index, :show, :new]
end
