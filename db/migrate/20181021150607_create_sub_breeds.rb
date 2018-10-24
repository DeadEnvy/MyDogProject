class CreateSubBreeds < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_breeds do |t|
      t.string :SubBreedName
      t.references :main_breed, foreign_key: true
      
      t.timestamps
    end
  end
end
