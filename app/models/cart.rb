class Cart < ApplicationRecord
  has_many :cartitems
  has_many :items, through: :cartitems
  belongs_to :user
  monetize :price_cents
  # belongs_to :order
end
