class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table(:inventories) do |t|
      t.column(:shoe_id, :integer)
      t.column(:available, :boolean)
      t.column(:clearance, :boolean)
      t.column(:price, :decimal, :precision => 6, :scale => 2)
      t.timestamps()
    end
  end
end
