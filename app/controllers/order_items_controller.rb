class OrderItemsController < ApplicationController
  def index
    @order_items = current_order.order_items
  end

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save!
    session[:order_id] = @order.id
    redirect_to products_path
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.html { redirect_to order_items_path }
      format.js
    end
    @order.save
  end

  private

  def item_params
    params.require(:order_item).permit(:product_id)
  end
end
