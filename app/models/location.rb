# == Schema Information
#
# Table name: locations
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#  user_id    :bigint(8)
#

class Location < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  mount_uploader :image, ImagesUploader
end
