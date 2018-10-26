class DogsController < ApplicationController
  def index
    @dogs = MainBreed.all
  end

  def show
  end
end
