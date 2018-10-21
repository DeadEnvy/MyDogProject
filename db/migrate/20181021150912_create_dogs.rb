class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :DogType
      t.string :Sound
      t.integer :Age
      t.string :Size
      t.references :MainBreedName, foreign_key: true

      t.timestamps
    end
  end
end
