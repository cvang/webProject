class AddFilenameToProduct < ActiveRecord::Migration
  def change
    add_column :products, :filename, :string
  end
end
