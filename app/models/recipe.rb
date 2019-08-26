class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :steps
  belong_to :user
end
