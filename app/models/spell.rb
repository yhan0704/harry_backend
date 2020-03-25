class Spell < ApplicationRecord

    has_many :favorite_spells
    has_many :users
    
end
