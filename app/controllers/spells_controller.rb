class SpellsController < ApplicationController
  def new 
    @spell = Spell.new
    @wizard = Wizard.find(params[:wizard_id])
  end

  def show 
    @spell = Spell.find(params[:id])
    @wizard = @spell.wizard
  end

  def create 
    @wizard = Wizard.find(params[:wizard_id])
    @spell = Spell.new(spell_params)
    @spell.wizard = @wizard

    if @spell.save
      # redirect_to "/wizards/#{@wizard}"
      # redirect_to wizard_path(@wizard)
      redirect_to @wizard
    else 
      flash[:error] = @spell.errors.full_messages.to_sentence
      render :new
    end
  end

  def spell_params 
    params.require(:spell).permit(:name, :description)
  end
end
