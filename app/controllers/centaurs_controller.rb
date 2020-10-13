class CentaursController < ApplicationController

  def index 
    @centaurs = Centaur.all
  end

  def show 
    @centaur = Centaur.find(params[:id])
  end 

  

end