Rails.application.routes.draw do
 
 namespace :api do
  

  # get "/kenya_aa_url" => "products#kenya_aa_method"

  # get "/costa_rica_tarrazu_url" => "products#costa_rica_tarrazu_method"

  # get "/guatemala_url" => "products#guatemala_method"

  # get "/el_salvador_url" => "products#el_salvador_method"

  # get "/one_product" => "products#one_product"

  # get "/one_product/:id" => "products#one_product"
  get "/products" =>"products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"
 end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

