class Order < ApplicationRecord
  belong_to :user, :cart
end
