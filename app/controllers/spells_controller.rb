class SpellsController < ApplicationController

  def index
    if params[:wizard_id]
      @wizard = Wizard.find(params[:wizard_id])
      @spells = @wizard.spells
    else
      @spells = Spell.all
    end
  end

  def wizard_index

  end

end
