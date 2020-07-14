class ReviewsController < ApplicationController

  def new
    @balloon_animal = BalloonAnimal.find(params[:balloon_animal_id])
    @review = Review.new
  end

  def create 
    @review = Review.new(body: params[:review][:body])
    @balloon_animal = BalloonAnimalfind(params[:balloon_animal_id]))
    @review.balloon_animal = @balloon_animal

    if @review.save
      redirect_to @balloon_animal
    else 
      render :new 
    end
  end

  def show 
    @review = Review.find(params[:id])
    @balloon_animal = @review.balloon_animal
  end

  def index 
    @reviews = Review.all 

    # else 
    @balloon_animal = BalloonAnimal.find(params[:balloon_animal_id])
    @reviews = @balloon_animal.reviews
    
  end





end
