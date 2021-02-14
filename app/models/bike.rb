class Bike < ApplicationRecord
  mount_uploader :image, ImageUploader
end
