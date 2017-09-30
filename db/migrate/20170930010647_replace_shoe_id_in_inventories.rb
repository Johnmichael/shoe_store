class ReplaceShoeIdInInventories < ActiveRecord::Migration[5.1]
  def change
    remove_column(:inventories, :shoe_id, :integer)
    add_column(:inventories, :brands_shoes_id, :integer)
  end
end
