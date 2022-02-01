class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.integer :property_price
      t.string :property_address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
