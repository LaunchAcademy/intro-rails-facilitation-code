class WizardsController < ApplicationController

  def index
    @wizards = Wizard.all
  end

  def show
    @wizard = Wizard.find(params[:id])
    @spells = @wizard.spells
  end

  def new
    @wizard = Wizard.new
  end

  def create
    @wizard = Wizard.new(wizard_params)

    if @wizard.save
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

  def destroy 
    @wizard = Wizard.find(params[:id])
    @wizard.destroy
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
  def wizard_params
    params.require(:wizard).permit(:name, :title, :age)
  end
end
