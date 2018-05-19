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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
