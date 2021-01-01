class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :avatar, :json
  end
end
