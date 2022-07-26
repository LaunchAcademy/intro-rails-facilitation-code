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
    # render "wizards/new.html.erb"
  end

  def create 
    @wizard = Wizard.new(wizard_params)

    if @wizard.save 
      # redirect "/wizards/#{wizard.id}"
      # redirect_to wizard_path(wizard) 
      flash[:notice] = "WIZARD CREATED!"
      redirect_to @wizard 
    else 
      flash.now[:error] = "you done goofed"
      render :new  
    end

  end


  # def edit 
  #   @wizard = Wizard.find(params[:id])
  # end

  # def update 
  #   @wizard = Wizard.find(params[:id])

  #   if @wizard.update_attributes(wizard_params)
  #     redirect_to @wizard
  #   else
  #     render :edit
  #   end
  # end

  private

  def wizard_params
     params.require(:wizard).permit(:name, :title, :age)
  end
end
