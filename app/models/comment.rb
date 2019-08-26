class Comment < ApplicationRecord
  belong_to :recipe, :user

end
