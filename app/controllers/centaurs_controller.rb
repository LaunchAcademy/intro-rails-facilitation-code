class CentaursController < ApplicationController

  def index
    @centaurs = Centaur.all
    # render :index
  end

  def show
    @centaur = Centaur.find(params[:id])
    # render :show
  end



end
