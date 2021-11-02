Rails.application.routes.draw do

  resources :wizards, only: [:index, :new, :create, :show] do 
    resources :spells, only: [:new, :create]
  end
  

  root 'wizards#index'

  # resources :starships, only: :index
  # make a path available for GET of "/starships"

  # hey, there is a controller, called the starships_controller. 
  # in that starships controller, run the "index" method, whenever a request of /starships comes 
end
