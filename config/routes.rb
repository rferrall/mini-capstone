Rails.application.routes.draw do
 
 namespace :api do
  get "/all_products_url" =>"products#all_products_method"
 end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

