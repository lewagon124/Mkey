class Item < ApplicationRecord
  belong_to :cart, :ingredient
end
