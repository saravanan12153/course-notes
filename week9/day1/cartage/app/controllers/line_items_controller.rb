class LineItemsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    if @cart.products.include?(@product)
      line_item = @cart.line_items.find_by_product_id(@product.id)
      line_item.quantity = line_item.quantity + 1
      line_item.save!
    else
      @cart.products << @product
    end
    redirect_to :back, :notice => "#{@product.name} added to your cart."
  end

end
