class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table(:shoes) do |t|
      t.column(:brand_id, :integer)
      t.column(:gender, :boolean)
      t.column(:size, :decimal, :precision => 4, :scale => 1)
      t.column(:shoe, :string)
      t.timestamps()
    end
  end
end
