class AddPriceToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_column :orderitems, :price, :decimal
    add_reference :orderitems, :order, null: false, foreign_key: true
  end
end
