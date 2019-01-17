Rails.application.routes.draw do
 
 namespace :api do
  get "/all_products_url" =>"products#all_products_method"

  get "/kenya_aa_url" => "products#kenya_aa_method"

  get "/costa_rica_tarrazu_url" => "products#costa_rica_tarrazu_method"

  get "/guatemala_url" => "products#guatemala_method"

  get "/el_salvador_url" => "products#el_salvador_method"
 end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

