class SpellsController < ApplicationController

  def new 
    @spell = Spell.new
    @wizard = Wizard.find(params[:wizard_id])
  end

  def create 
    @spell = Spell.new(spell_params)
    @wizard = Wizard.find(params[:wizard_id])
    @spell.wizard = @wizard

    if @spell.save 
      redirect_to @wizard 
    else 
      render :new
    end
  end
 

  def spell_params 
    params.require(:spell).permit(:name, :description)
  end
end
