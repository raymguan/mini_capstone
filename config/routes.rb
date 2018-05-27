Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/product_url" => "products#product_action"
    get "products_url" => "products#products_action"
  end

end
