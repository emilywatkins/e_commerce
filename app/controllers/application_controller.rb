class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  helper_method :current_order


  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
