class RenameColumnOrderitems < ActiveRecord::Migration[6.0]
  def change
    rename_column :orderitems, :title, :productname
  end
end
