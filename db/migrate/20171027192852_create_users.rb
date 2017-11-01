class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :product
      t.string :past_orders

      t.timestamps
    end
  end
end
