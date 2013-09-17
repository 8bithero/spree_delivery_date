Spree::Admin::OrdersController.class_eval do
  #after_update :delivery_date_specific_validation
  
  def delivery_dates
    load_order
  end
  
  def change_date
    #debugger
    #@order=Spree::Order.find_by_number(params[:id])
    order=Spree::Order.find_by_number(params[:id])
    delivery_date2 = DateTime.new(params[:order]["delivery_date(1i)"].to_i, 
                            params[:order]["delivery_date(2i)"].to_i,
                            params[:order]["delivery_date(3i)"].to_i,
                            params[:order]["delivery_date(4i)"].to_i,
                            params[:order]["delivery_date(5i)"].to_i)
    #render :text => params[:order]["delivery_date(1i)"]
    #@order.validate
    order.delivery_date = delivery_date2
    order.save
    unless @order
      flash[:error]
    end
    #render :text => order.delivery_date
    
    #order.update!(delivery_date: delivery_date2)
    #order.update_column(:delivery_date => delivery_date2)
    
    #:back
    #load_order
    redirect_to delivery_dates_admin_order_url(order)
  end
   
end