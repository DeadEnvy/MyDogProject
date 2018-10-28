class Dog < ApplicationRecord
  belongs_to :main_breed
  belongs_to :sub_breed, optional: true

  validates :Age, presence: true
  validates :Sound, presence: true
  validates :main_breed, presence: true

end
