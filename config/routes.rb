Carpenta::Application.routes.draw do
  

  resources :carts, only: [:destroy]
  resources :order_line_items, only: [:create, :destroy, :update]
  resources :orders, only: [:new, :create]

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'static_pages#home'
  
  match 'contact', to: 'static_pages#contact', as: 'contact', via: 'get'
  match 'contact', to: 'static_pages#dispatch_email', as: 'dispatch_email', method: :post

  
  match '/shop/:collection/', :to => 'shop#collection', :via => 'get'
  match '/shop/:collection/:product', :to => 'shop#productDetail', :via => 'get'
  match '/commerce/showCart', :to => 'carts#showCart', :via => 'get'
 
  match '/commerce/showOrder/:id', :to => 'orders#showOrder', :via => 'get'


  match '/about',         to: 'static_pages#about',         via: 'get'

 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
