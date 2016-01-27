class AddTimeToProducts < ActiveRecord::Migration
  def change
    remove_column :products, :date
    add_column :products, :time, :string
    add_column :products, :date, :string
  end
end
