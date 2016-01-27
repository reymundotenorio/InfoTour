class RemoveExpirationMmToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :expiration_mm, :string
    remove_column :users, :expiration_yy, :string
    add_column :users, :expiration_date, :string
    add_column :users, :tarjet_type, :string
    add_column :users, :tarjet_user, :string
  end
end
