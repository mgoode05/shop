class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :artist_name
      t.string :album_name
      t.float :price
      t.integer :quantity
      t.string :album_url1
      t.string :album_url2
      t.string :album_url3
      t.text :description

      t.timestamps
    end
  end
end
