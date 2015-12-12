class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.integer :card_numbers, :limit => 8
      t.integer :expire
      t.integer :cvs
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
