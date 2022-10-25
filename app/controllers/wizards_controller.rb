class WizardsController < ApplicationController

  def index
    @wizards = Wizard.all
    # render :"views/wizards/index.html.erb"
  end

  def show
    @wizard = Wizard.find(params[:id])
  end

  def new
    @wizard = Wizard.new
  end

  def create
    # binding.pry
    @wizard = Wizard.new(wizard_params)
    if @wizard.save
      # redirect_to "/wizards"
      redirect_to wizards_path
    else
      render :new
    end
  end

  def edit
    @wizard = Wizard.find(params[:id])
  end

  def update
    @wizard = Wizard.find(params[:id])

    if @wizard.update(wizard_params)
      # redirect_to "wizards/#{@wizard.id}"
      redirect_to @wizard
      # redirect_to wizard_path(@wizard)
    else
      render :edit
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
  def wizard_params
    params.require(:wizard).permit(:name, :age, :title)
  end
end
