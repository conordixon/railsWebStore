class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :avatar, :integer
  end
end
