class MainBreed < ApplicationRecord
  has_many :sub_breeds

  validates :MainBreedName, presence: true
  validates :HasSubBreed, presence: true
  validates_associated :sub_breeds
end
