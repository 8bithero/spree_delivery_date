Deface::Override.new(:virtual_path => "spree/admin/shared/_order_tabs",
                    :name => "add_delivery_date_to_admin_order_tabs",
                    :insert_bottom => "[data-hook='admin_order_tabs'], #admin_order_tabs[data-hook]",
                    :partial => "spree/admin/orders/tab",
                    :disabled => false)
