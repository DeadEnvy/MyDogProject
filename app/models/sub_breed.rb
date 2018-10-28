class SubBreed < ApplicationRecord
    belongs_to :main_breed

    validates :SubBreedName, presence: true
end
