class BalloonAnimalsController < ApplicationController

  def index
    @balloon_animals = BalloonAnimal.all
    # render :index
  end

  def show
    @balloon_animal = BalloonAnimal.find(params[:id])
  end

  def new 
    @balloon_animal = BalloonAnimal.new
    # render :new 
  end

  def create 
    @balloon_animal = BalloonAnimal.new(balloon_animal_params)

    if @balloon_animal.save 
      flash[:notice] = "good job"

      redirect_to @balloon_animal
      # redirect "/balloon_animals/#{@balloon_animal}.id"
    else 
      flash[:notice] = @balloon_animal.errors.full_messages.to_sentence
      render :new
    end

  end

  private 

  def balloon_animal_params 
    params.require(:balloon_animal).permit(:animal, :color)
  end

  def hello 
    return "hello"
  end



end
