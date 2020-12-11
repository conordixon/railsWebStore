class CreateProductitems < ActiveRecord::Migration[6.0]
  def change
    create_table :productitems do |t|
      t.string :productname
      t.text :description
      t.decimal :price
      t.string :brand

      t.timestamps
    end
  end
end
