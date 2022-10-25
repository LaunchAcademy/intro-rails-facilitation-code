class SpellsController < ApplicationController
  def new
    # binding.pry
    @wizard = Wizard.find(params[:wizard_id])
    @spell = Spell.new
  end

  def create
    # binding.pry
    @wizard = Wizard.find(params[:wizard_id])
    @spell = Spell.new(spell_params)
    @spell.wizard = @wizard
    if @spell.save
      redirect_to @wizard
    else
      render :new
    end
  end

  private

  def spell_params
    params.require(:spell).permit(:name, :spell_type)
  end
end