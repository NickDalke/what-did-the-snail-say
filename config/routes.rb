Rails.application.routes.draw do


    # get "/snails/:snail_id/comments" => "comments#index"
    # post "/snails/:snail_id/comments" => "comments#create", as: :create_comment
    # get "/snails/:snail_id/comments/new" => "comments#new", as: :new_comments
    # get "/snails/:snail_id/comments/:id/edit" => "comments#edit", as: :edit_comment
    # get "/snails/:snail_id/comments/:id" => "comments#show", as: :snail_comments
    # patch "/snails/:snail_id/comments" => "comments#update"
    # put "/snails/:snail_id/comments/:id" => "comments#update", as: :update_comment
    # delete "/snails/:snail_id/comments/:id" => "comments#destroy", as: :destroy_comment

    # get "/snails" => "snails#index", as: :snails
    # post "/snails" => "snails#create" 
    # get "/snails/new" => "snails#new", as: :new_snail
    # get "/snails/:id/edit" => "snails#edit", as: :edit_snail
    # get "/snails/:id" => "snails#show",  as: :snail
    # patch "/snails/:id" => "snails#update"
    # put "/snails/:id" => "snails#update"
    # delete "/snails/:id" => "snails#destroy"

    get "/login" => "sessions#new",  as: :login
    post "/login" => "sessions#create"  
    delete "/logout" => "sessions#destroy", as: :logout


    resources :snails do
       resources :comments
     end
    # get "snails" => "snails#index", as: :snails
    
    # get "snails/new" => "snails#new", as: :new_snail
    # post "snails" => "snails#create"
    #    get "snails/:id" => "snails#show", as: :show
    # get "/snails/:id/edit" => "snails#edit", as: :edit
    # patch "snails/:id" => "snails#update"
    # get '/login'     => 'sessions#new'
    # post '/login'    => 'sessions#create'
    # delete '/logout' => 'sessions#destroy'


    root "sessions#new"
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
