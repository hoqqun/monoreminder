class Location < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  mount_uploader :image, ImagesUploader
end