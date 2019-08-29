class Item < ApplicationRecord
  belongs_to :cartitem
  belongs_to :ingredient
  mount_uploader image, PhotoUploader
end
