class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_reference :shops, :country, index: true, foreign_key: true
  end
end
