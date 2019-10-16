class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :part_number
      t.decimal :price, null: false
      t.timestamps
    end
    add_reference :products, :shop, index: true, foreign_key: true
  end
end
