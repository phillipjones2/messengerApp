Rails.application.routes.draw do

  root :to => "contacts#new"
  resources :contacts, only: [:new, :create]

  resources :messages do
    resources :comments
  end

  resources :todos

  get '/movies', to: 'movies#index', as: :movies
  get '/movies/:id', to: 'movies#show', as: :movie

  get '/actors', to: 'actors#index', as: :actors
  get '/actors/:id', to: 'actors#show', as: :actor

  # get 'messages'            => 'messages#index', as: :all_messages
  # get 'messages/new'        => 'messages#new', as: :new_message
  # get '/messages/:id'       => 'messages#show', as: :message
  # post 'messages'           => 'messages#create'
  # get '/messages/:id/edit'  => 'messages#edit', as: :edit_message
  # patch '/messages/:id'     => 'messages#update'
  # delete '/messages/:id'    => 'messages#destroy'




end
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
