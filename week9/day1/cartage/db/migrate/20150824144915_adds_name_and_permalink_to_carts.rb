class AddsNameAndPermalinkToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :name, :string, default: "Shopping Cart"
    add_column :carts, :permalink, :string
  end
end
