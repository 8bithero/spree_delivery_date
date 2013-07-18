Deface::Override.new(:virtual_path => "spree/layouts/admin",
                      :name => "add_delivery_date_to_admin_order_information",
                      :insert_top => "[data-hook='toolbar']>ul",
                      :partial => "spree/admin/orders/delivery_date",
                      :disabled => false)
