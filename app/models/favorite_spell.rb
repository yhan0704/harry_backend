class FavoriteSpell < ApplicationRecord

    belongs_to :user
    belongs_to :spell

end
