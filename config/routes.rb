Rails.application.routes.draw do
  root 'balloon_animals#index'

  resources :balloon_animals, only: [:index, :show, :new, :create] do 
    resources :reviews, only: [:new, :create, :index]
  end

  # "/balloon_animals/balloon_animal_id/reviews/review_id/comments/new"

  resources :reviews, only: [:show, :edit, :update, :destroy]


end
