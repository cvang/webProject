class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :producttypescode, index: true, foreign_key: true
      t.decimal :price, :precision => 10, :scale => 2
      t.text :product_detail

      t.timestamps null: false
    end
  end
end
