class SearchController < ApplicationController
    def index 
    end

    def results
        @dogs = MainBreed.where('MainBreedName LIKE ?', "%#{params[:q]}%")
    end
end