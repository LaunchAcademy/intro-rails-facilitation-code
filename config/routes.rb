Rails.application.routes.draw do
  resources :wizards
  root 'wizards#index'

  resources :centaurs, only: [:index, :show, :new]
end
