class AddForeignKeyToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :location, index:true
    add_reference :items, :category, index:true
  end
end
