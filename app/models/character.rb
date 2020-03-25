class Character < ApplicationRecord

  has_many :favorite_characters
  has_many :users
end
