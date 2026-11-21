Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "products" => "products#index", as: :products
  post "products" => "products#create", as: :create_product
  get "products/:id" => "products#show", as: :product
  patch "products/:id" => "products#update", as: :update_product
  delete "products/:id" => "products#destroy", as: :destroy_product

  get "workers" => "workers#index", as: :workers
  post "workers" => "workers#create", as: :create_worker
  get "workers/:id" => "workers#show", as: :worker
  patch "workers/:id" => "workers#update", as: :update_worker
  delete "workers/:id" => "workers#destroy", as: :destroy_worker

  get "our_stores" => "our_stores#index", as: :stores
  post "our_stores" => "our_stores#create", as: :create_store
  get "our_stores/:id" => "our_stores#show", as: :store
  patch "our_stores/:id" => "our_stores#update", as: :update_store
  delete "our_stores/:id" => "our_stores#destroy", as: :destroy_store

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
