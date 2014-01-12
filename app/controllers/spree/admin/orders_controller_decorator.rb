Spree::Admin::OrdersController.class_eval do
  #after_update :delivery_date_specific_validation
  
  def delivery_dates
    load_order
  end
  
  def change_date
    
    #@order=Spree::Order.find_by_number(params[:id])
    order=Spree::Order.find_by_number(params[:id])
    delivery_date2 = Time.new(params[:order]["delivery_date(1i)"].to_i, 
                            params[:order]["delivery_date(2i)"].to_i,
                            params[:order]["delivery_date(3i)"].to_i,
                            params[:order]["delivery_date(4i)"].to_i,
                            params[:order]["delivery_date(5i)"].to_i,00, "-04:00")
    #render :text => params[:order]["delivery_date(1i)"]
    #@order.validate
    order.delivery_date = delivery_date2
    #debugger
    order.save
    
    #if find_event?(event_name)
    #  edit_event(order)
    #else
    #  create_event(order)
    #end

    redirect_to delivery_dates_admin_order_url(order)
  end
  
  def change_date_params
    params.require(:order).permit!
  end
   
end
