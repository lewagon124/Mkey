class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_many :steps, dependent: :destroy
  belongs_to :user
  mount_uploader :image, PhotoUploader
  mount_uploader :video, PhotoUploader
end
