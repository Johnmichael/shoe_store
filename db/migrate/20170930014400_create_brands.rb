class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table(:brands) do |t|
      t.column(:brand, :string, unique: true)
      t.column(:price, :decimal, :precision => 6, :scale => 2)
      t.timestamps
    end
  end
end
