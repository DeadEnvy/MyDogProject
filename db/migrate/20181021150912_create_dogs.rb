class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :Sound
      t.string :MemePhrase
      t.string :Age
      t.references :main_breed, foreign_key: true
      t.references :sub_breed, foreign_key: true
      t.timestamps
    end
  end
end
