class User < ApplicationRecord
    
    has_many :favorite_characters
    has_many :favorite_spells
    has_many :characters, through: :favorite_characters
    has_many :spells, through: :favorite_spells

end
