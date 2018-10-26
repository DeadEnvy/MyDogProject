class Dog < ApplicationRecord
  belongs_to :main_breed
  belongs_to :sub_breed, optional: true

end
