GemTest::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'demographic#form'
   get 'demographic' => 'demographic#form', as: :demographic_form
   post 'demographic/get' => 'demographic#get', as: :demographic_get

   get 'coverage/all' => 'coverage#all', as: :coverage_all

   get 'payment/status' => 'payment#status', as: :payment_status
   post 'payment/status/get' => 'payment#status_get', as: :payment_status_get

   get 'enrollment/post' => 'enrollment#post', as: :enrollment_post
   post 'enrollment/post/result' => 'enrollment#post_result', as: :enrollment_post_result
   get 'enrollment/retrieve' => 'enrollment#retrieve', as: :enrollment_retrieve
   post 'enrollment/retrieve_get' => 'enrollment#retrieve_get', as: :enrollment_retrieve_get

   get 'claim/post' => 'claim#post', as: :claim_post
   post 'claim/post/result' => 'claim#post_result', as: :claim_post_result
   get 'claim/retrieve' => 'claim#retrieve', as: :claim_retrieve
   post 'claim/retrieve_get' => 'claim#retrieve_get', as: :claim_retrieve_get

   get 'x12/post' => 'x12#form', as: :x12_form
   post 'x12/post/result' => 'x12#post_result', as: :x12_post_result
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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
