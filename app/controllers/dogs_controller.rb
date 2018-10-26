class DogsController < ApplicationController
  def index
    #@dogs = MainBreed.all

    @dogs = MainBreed.order('MainBreedName ASC').page(params[:page]).per(25)
  end

  def show
  end
end
