class Relationship < ApplicationRecord
  belongs_to :user
  # belongs_to :friend_user, class_name: :user, foreign_key: true
end
