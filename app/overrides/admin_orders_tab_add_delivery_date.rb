Deface::Override.new(:virtual_path => "spree/admin/shared/_order_submenu",
                    :name => "add_delivery_date_to_admin_order_tab",
                    :insert_bottom => "[data-hook='admin_order_tabs'], #admin_order_tabs[data-hook]",
                    :partial => "spree/admin/orders/tab_delivery_date",
                    :disabled => false)