Deface::Override.new(:virtual_path => "spree/admin/orders/_form",
                      :name => "add_delivery_date_to_admin_order_information",
                      :insert_after => "[data-hook='order_details_total']",
                      :partial => "spree/admin/orders/delivery_date",
                      :disabled => false)
