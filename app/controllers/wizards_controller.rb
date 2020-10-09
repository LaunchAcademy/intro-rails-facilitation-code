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
    @wizard = Wizard.new(wizard_params)

    if @wizard.save
      redirect_to "/wizards"
    else
      render :new
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def wizard_params
      params.require(:wizard).permit(:name, :title, :age)
    end
end
