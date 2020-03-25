class CreateFavoriteSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_spells do |t|
      t.integer :user_id
      t.integer :spell_id

      t.timestamps
    end
  end
end
