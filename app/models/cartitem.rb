class Cartitem < ApplicationRecord
  has_many :items
  belongs_to :cart
end
