class Cart < ApplicationRecord
  has_many :items
  belongs_to :user
  monetize :price_cents
  belongs_to :order
end
