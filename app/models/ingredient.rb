class Ingredient < ApplicationRecord
  belong_to :recipe
  has_many :items
end
