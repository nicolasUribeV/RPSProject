Rails.application.routes.draw do
<<<<<<< HEAD
  resources :valor_arriendos

  resources :notificacions

  resources :detalle_cupons

  resources :cupon_propiedads

  resources :cupon_propietarios

  resources :servicio_contratados

  resources :contrato_propiedads

  resources :fotos

  resources :inventario_propiedads

  resources :caracteristica_propiedads

  resources :caracteristica_tipos

  resources :solicituds

  resources :cupon_pago_arrendatarios

  resources :contrato_arriendos

  resources :propiedads

  resources :propietarios

  resources :arrendatarios

  resources :ubicacions

  resources :usuarios

  resources :calendarios

  resources :tipo_propiedads

  resources :caracteristicas

  resources :tipo_arriendos

  resources :items

  resources :servicios

=======
  get 'arrend/index'

  get 'prop/index'

  get 'admin/index'

  devise_for :users
>>>>>>> origin/master
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
