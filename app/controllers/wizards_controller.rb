class WizardsController < ApplicationController

  def index
    @wizards = Wizard.all
  end

  # def show
  #   @wizard = Wizard.find(params[:id])
  # end

  def new 
    @wizard = Wizard.new
    # render "wizards/new.html.erb"
  end

  def create 
    @wizard = Wizard.new(wizard_params)

    if @wizard.save #returns truthy and persists 
      redirect_to "/wizards"
    else 
      render :new
    end
  end


  def edit 
    @wizard = Wizard.find(params[:id])
  end

  def update 
    @wizard = Wizard.find(params[:id])

    if @wizard.update_attributes(wizard_params)
      redirect_to @wizard
    else
      render :edit
    end
  end

  private

  def wizard_params
    params.require(:wizard).permit(:name, :title, :age)
  end
end
