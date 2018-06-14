Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/products" => "products#index"
    
    get "/products/:id" => "products#show"
    
    post "/products" => "products#create"

    patch "/products/:id" => "products#update"

    delete "/products/:id" => "products#destroy"


    # get "/product_url" => "products#product_action"
    # get "products_url" => "products#products_action"
    # get "first_product_url" => "products#first_product_action"
  end
    get "/login" => "session#new"
    post "/users" => "users#create"
    delete "/logout" => "session#destroy"
end
