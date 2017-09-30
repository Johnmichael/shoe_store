class AddStoreNameAndInStockToInventories < ActiveRecord::Migration[5.1]
  def change
    add_column(:inventories, :in_stock, :integer)
    add_column(:inventories, :store_name, :string)
  end
end
