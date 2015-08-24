class CartsController < ApplicationController

  def show
    @cart = Cart.find(session[:cart_id])
    if params[:sale_id]
      @cart.clear!
      redirect_to root_path, :notice => "Thank you for your business!"
    end
  end

end
