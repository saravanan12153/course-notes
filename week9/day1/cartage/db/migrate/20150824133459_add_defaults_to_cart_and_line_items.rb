class AddDefaultsToCartAndLineItems < ActiveRecord::Migration
  def change
    change_column :carts, :price, :integer, default: 0
    change_column :line_items, :quantity, :integer, default: 1
  end
end
