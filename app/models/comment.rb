class Comment < ApplicationRecord
  belong_to :recipe
  belong_to :user
end
