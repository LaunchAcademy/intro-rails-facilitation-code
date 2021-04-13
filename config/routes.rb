Rails.application.routes.draw do

  resources :wizards, only: [:index, :new, :create] do 
    resources :spells, only: [:new, :create]
  end

  root 'wizards#index'



  # get "/" do 
  #   redirect "/wizards"
  # end 

  # get "/pineapples", to: "pineapples#index"

  # resources :starships, only: :index
  # make a path available for GET of "/starships"

  # hey, there is a controller, called the starships_controller. 
  # in that starships controller, run the "index" method, whenever a request of /starships comes 
end
