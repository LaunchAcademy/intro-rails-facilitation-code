class MonstersController < ApplicationController
  def index
    @monsters = Monster.all
    # binding.pry
  end
end