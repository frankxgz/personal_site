PersonalSite::Application.routes.draw do
  get "chinese_pages/home"

  get "chinese_pages/work"

  root :to => 'static_pages#home'
  
  match '/',    :to => 'static_pages#home'
  match '/experience', :to => 'static_pages#work'
  match '/education', :to => 'static_pages#academic'
  match '/about', :to => 'static_pages#about'
  match '/skills', :to => 'static_pages#skill'
  match '/hobbies', :to => 'static_pages#hobbies'
  
  match '/home_cn', :to => 'chinese_pages#home'
  match '/experience_cn', :to => 'chinese_pages#work'
  match '/education_cn', :to => 'chinese_pages#academic'
  match '/about_cn', :to => 'chinese_pages#about'
  match '/skills_cn', :to => 'chinese_pages#skill'
  match '/hobbies_cn', :to => 'chinese_pages#hobbies'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
