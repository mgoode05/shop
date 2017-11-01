class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :hat_type
      t.float :price
      t.string :quantity
      t.boolean :quick_strike

      t.timestamps
    end
  end
end
