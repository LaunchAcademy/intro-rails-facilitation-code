class SpellsController < ApplicationController

    def new 
      @wizard = Wizard.find(params[:wizard_id])
      @spell = Spell.new
    end

    def create 
      @wizard = Wizard.find(params[:wizard_id])
      @spell = Spell.new(spell_params)
      @spell.wizard = @wizard 

      if @spell.save
        redirect_to @wizard
      else 
        render :new
      end
    end

    def spell_params
      params.require(:spell).require(:name)
    end

end