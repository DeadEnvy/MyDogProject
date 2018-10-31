class SearchController < ApplicationController
    def index 
    end

    def results
        #@dogs = Dog.where('main_breed_id LIKE ?', "%#{params[:q]}%")
        #@dogs = Dog.where('main_breed_id.MainBreedName LIKE ?', "%#{params[:q]}%")
        #@dogs = Dog.where('main_breed.MainBreedName LIKE ?', "%#{params[:q]}%")
        
        #@dogs = Dogs.joins(:MainBreedName).where('MainBreedName LIKE ?', "%#{params[:q]}%")
        #@dogs = Dog.joins(:MainBreeds).where('main_breeds.MainBreedName LIKE ?', "%#{params[:q]}%")
        @dogs = Dog.joins(:main_breed).where('MainBreedName LIKE ?', "%#{params[:q]}%")
    end
end