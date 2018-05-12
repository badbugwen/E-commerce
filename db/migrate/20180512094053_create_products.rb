class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.timestamps
      t.string :name
      t.string :image
      t.integer :price
      t.text :description
    end
  end
end
