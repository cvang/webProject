class AddPrivateToProduct < ActiveRecord::Migration
  def change
    add_column :products, :private, :boolean
  end
end
