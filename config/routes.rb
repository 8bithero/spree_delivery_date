Spree::Core::Engine.routes.prepend do
  namespace :admin do
    resources :orders do
      member do
        get :delivery_dates
        post :change_date
      end
    end
  end
  #match '/admin/orders/delivery_date' => 'admin/orders/delivery_date', :via => [:post]
  #match '/admin/comments' => 'admin/comments', :via => [:get, :post]
  #  match '/admin/comment_types' => 'admin/comment_types', :via => [:get, :post]
  #end
  
  #post 'admin/orders/:id/change_date', to: 'admin/orders#change_date', as: 'change_date'
  
  


end
