class Cart < ApplicationRecord
  has_many :items, :orders
end
