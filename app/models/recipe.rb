class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :steps
  belongs_to :user
  mount_uploader image, PhotoUploader
end
