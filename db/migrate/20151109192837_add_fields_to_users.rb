class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :cel, :string
    add_column :users, :country, :string
    add_column :users, :no_tarjet, :string
    add_column :users, :expiration_mm, :string
    add_column :users, :expiration_yy, :string
    add_column :users, :CVC, :string
  end
end
