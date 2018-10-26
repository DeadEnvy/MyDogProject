class DogsController < ApplicationController
  def index
    #@dogs = MainBreed.all
    @dogs = Dog.order('main_breed_id ASC').page(params[:page]).per(25)
    #@dogs = MainBreed.order('MainBreedName ASC').page(params[:page]).per(25)
    
  end

  def show
   @dog = Dog.find(params[:id])
  end
end
