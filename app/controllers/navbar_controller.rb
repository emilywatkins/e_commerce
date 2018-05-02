class NavbarController < ApplicationController
  def index
    @order_items_count = current_order.order_items.count
  end
end
