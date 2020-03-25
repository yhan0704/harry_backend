class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :hogwarts_student
      t.string :species
      t.string :image
      t.string :ancestry
      t.string :role
      t.string :dateBirth
      t.string :actor

      t.timestamps
    end
  end
end
