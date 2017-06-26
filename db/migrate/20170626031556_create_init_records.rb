class CreateInitRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end
    create_table :products do |t|
      t.string :name
      t.integer :price, default: 0
      t.timestamps
    end
    create_table :logs do |t|
      t.references :user
      t.references :product
      t.timestamps
    end
    add_index :logs, [:user_id, :product_id], unique: true
  end
end
