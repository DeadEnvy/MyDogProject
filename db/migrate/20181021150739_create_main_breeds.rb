class CreateMainBreeds < ActiveRecord::Migration[5.2]
  def change
    create_table :main_breeds do |t|
      t.string :MainBreedName
     

      t.timestamps
    end
  end
end
