Rails.application.routes.draw do
  post '/api/clubs/sendmessage' => 'clubs#sendmessage'
  post '/api/clubs/sendemail' => 'clubs#sendemail'
  get '/api/users/register/check/:uid' => 'user#checkuid'
  post '/api/register' => 'users#register'
  post '/api/clubs/login' => 'clubs#login'
  post '/api/users/login' => 'users#login'
  get '/api/articles/:page_id' => 'articles#abstracts'
  get '/api/articles/detail/:article_id' => 'articles#detail'
  get '/api/clubs/:uid/articles/:page_id' => 'clubs#getabstracts'
  get '/api/users/logout' => 'users#logout'
  get '/api/clubs/logout' => 'clubs#logout'
 
  post '/api/clubs/articles/detail/create' => 'articles#create'
#  post '/api/clubs/articles/detail/:article_id/create_content' => 'articles#create_content'
  post '/api/clubs/articles/detail/:article_id/change' => 'articles#show'
  post '/api/clubs/articles/detail/:article_id/update' => 'articles#update'
  post '/api/clubs/articles/detail/:article_id/delete' => 'articles#destroy' 
  post '/api/clubs/articles/detail/:article_id/list' => 'articles#list'
  post '/api/clubs/articles/detail/:article_id/list/delete' => 'articles#cutlist'
  post 'api/users/:uid/articles/:article_id/notes/create' => 'notes#create'
  resources :notes
  resources :users
  resources :clubs
  resources :articles
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
