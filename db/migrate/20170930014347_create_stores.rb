class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table(:stores) do |t|
      t.column(:store, :string, unique: true)
      t.timestamps()
    end
  end
end
