class Item < ApplicationRecord
  belong_to :cart
  belong_to :ingredient
end
