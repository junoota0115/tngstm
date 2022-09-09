class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :company_id
      t.string :product_name
      t.integer :price
      t.integer :stock
      t.text :comment
      t.string :img_path

      t.timestamps
    end
  end
end
