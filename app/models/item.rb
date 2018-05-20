# == Schema Information
#
# Table name: items
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  price         :integer
#  purchase_date :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  memo          :text
#  location_id   :bigint(8)
#  category_id   :bigint(8)
#  image1        :string
#  image2        :string
#  image3        :string
#  user_id       :bigint(8)
#

class Item < ApplicationRecord
  belongs_to :category
  belongs_to :location
  belongs_to :user

  mount_uploader :image1, ImagesUploader
  mount_uploader :image2, ImagesUploader
  mount_uploader :image3, ImagesUploader

  validates :name, presence: true
end
