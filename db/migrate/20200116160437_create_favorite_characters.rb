class CreateFavoriteCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_characters do |t|
      t.integer :user_id
      t.integer :character_id

      t.timestamps
    end
  end
end
