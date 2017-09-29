class AddStoreNameAndInStockToInventorys < ActiveRecord::Migration[5.1]
  def change
    add_column(:inventorys, :in_stock, :integer)
    add_column(:inventorys, :store_name, :string)
  end
end
