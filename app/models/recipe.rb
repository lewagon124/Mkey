class Recipe < ApplicationRecord
  has_many :ingredients, :steps
  belong_to :user
end
