class AddInformationFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address1, :string
    add_column :users, :town, :string
    add_column :users, :city, :string
    add_column :users, :postalcode, :string
    add_column :users, :country, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
  end
end
