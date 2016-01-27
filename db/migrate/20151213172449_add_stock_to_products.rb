class AddStockToProducts < ActiveRecord::Migration
  def change
    add_column :products, :stock, :int
  end
end
