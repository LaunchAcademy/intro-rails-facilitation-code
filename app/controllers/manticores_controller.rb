class ManticoresController < ApplicationController 

    def index 
        @manticores = Manticore.all
        # render :"manticores/index.html.erb"
    end

    def show 
        @manticore = Manticore.find(params[:id])
    end

end