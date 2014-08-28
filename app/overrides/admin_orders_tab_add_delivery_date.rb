Deface::Override.new(:virtual_path => "spree/admin/shared/_order_tabs",
                    :name => "add_delivery_date_to_admin_order_tab",
                    :insert_bottom => "[data-hook='order_tab_summary'], #admin_order_tabs[data-hook]",
                    :partial => "spree/admin/orders/tab_delivery_date",
                    :disabled => false)