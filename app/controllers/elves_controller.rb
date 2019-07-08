class ElvesController < ApplicationController

  def index
    @elves = Elf.all
    # render :elves/index
  end

end
