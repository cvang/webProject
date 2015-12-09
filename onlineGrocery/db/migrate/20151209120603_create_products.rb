class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :product_type
      t.decimal :price
      t.string :detail

      t.timestamps null: false
    end
  end
end
