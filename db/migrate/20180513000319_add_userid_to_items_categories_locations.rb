class AddUseridToItemsCategoriesLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :user, index:true
    add_reference :categories, :user, index:true
    add_reference :locations, :user, index:true
  end
end
