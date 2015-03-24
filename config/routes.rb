Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations",
                                    sessions: "sessions" }
  
  get '/users/:id', to: 'users#show', as: 'user'
  put '/users/:id', to: 'users#edit', as: 'edit_user'
  delete '/users/:id', to: 'users#destroy', as: 'destroy_user'

  post '/users/:id/beers', to: 'beers#create', as: 'new_user_beer'
  get '/users/:id/beers', to: 'beers#index', as: 'user_beers'
  get '/users/:id/beers/:id', to: 'beers#show', as: 'user_beer'
  put '/users/:id/beers/:id', to: 'beers#edit', as: 'edit_user_beer'
  delete '/users/:id/beers/:id', to: 'beers#destroy', as:'destroy_user_beer'

  post '/users/:id/liquors', to: 'liquors#create', as: 'new_user_liquor'
  get '/users/:id/liquors', to: 'liquors#index', as: 'user_liquors'
  get '/users/:id/liquors/:id', to: 'liquors#show', as: 'user_liquor'
  put '/users/:id/liquors/:id', to: 'liquors#edit', as: 'edit_user_liquor'
  delete '/users/:id/liquors/:id', to: 'liquors#destroy', as: 'destroy_user_liquor'
  
  root 'users#show'
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
