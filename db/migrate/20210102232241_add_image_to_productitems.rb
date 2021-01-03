class AddImageToProductitems < ActiveRecord::Migration[6.0]
  def change
    add_column :productitems, :productimage, :json
  end
end
