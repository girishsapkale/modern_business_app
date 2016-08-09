Rails.application.routes.draw do
  get 'articles/index'

  get 'articles/new'

  get 'articles/edit'

  get 'articles/show' => 'articles#show'

  get 'articles/create'

  get 'articles/delete'

  get 'articles/update'

  devise_for :users
  
#   devise_for :users do
#   get '/users/sign_out' => 'devise/sessions#destroy'
#   end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    root 'welcome#index'

    get 'about' => 'welcome#about'
    get 'services' => 'welcome#services'
    # get 'contact' => 'welcome#contact'
    get 'index' => 'welcome#index'
    get 'portfolio_1_col' =>'welcome#portfolio_1_col'
    get 'portfolio_2_col' =>'welcome#portfolio_2_col'
    get 'portfolio_3_col' =>'welcome#portfolio_3_col'
    get 'portfolio_4_col' =>'welcome#portfolio_4_col'
    get 'portfolio_item' =>'welcome#portfolio_item'

    get 'blog_home_1' => 'articles#index'

    get 'blog_home_2' => 'welcome#blog_home_2'

    get 'blog_post' => 'articles#new'
    get 'full_width' => 'welcome#full_width'
    get 'sidebar' => 'welcome#sidebar'
    get 'faq' => 'welcome#faq'
    get 'error_404' => 'welcome#error_404'
    get 'pricing' => 'welcome#pricing'

    get 'contact' => 'messages#new'







    resources :messages
    # devise_for :users, controllers: { registrations: "registrations" }

    resources :articles



   resources :users do
      resources :messages
   end
    #devise_for :users, controllers: { sessions: 'users/sessions' }

    



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
