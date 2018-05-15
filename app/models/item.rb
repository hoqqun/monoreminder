class Item < ApplicationRecord
  belongs_to :category
  belongs_to :location
  belongs_to :user

  mount_uploader :image1, ImagesUploader
  mount_uploader :image2, ImagesUploader
  mount_uploader :image3, ImagesUploader
end
