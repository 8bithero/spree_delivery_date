Spree::Core::Engine.routes.prepend do
  namespace :admin do
    resources :delivery_dates
    resources :change_dates
    resources :orders do
      member do
        get :delivery_dates
        get :change_dates
      end
    end

  #match '/admin/comments' => 'admin/comments', :via => [:get, :post]
  #  match '/admin/comment_types' => 'admin/comment_types', :via => [:get, :post]
  end
  
  #post 'admin/orders/:id/change_date', to: 'admin/orders#change_date', as: 'change_date'
  
  


end
