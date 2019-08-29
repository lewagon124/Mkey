class Item < ApplicationRecord
  has_many :cartitems
  has_many :ingredients, dependent: :destroy
  mount_uploader :image, PhotoUploader
end
