class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    
    @products = Product.all
    
    search_name = params[:search]
    if search_name
      @products = Product.where("name LIKE ?", "%#{search_name}%")
    end
    discount = params[:discount]
    if discount
      @products = Product.where("price < ?", 20)
    end
    
    sort_term = params[:sort]
    sort_order = params[:sort_order]
    if sort_term == "price"
      if sort_order == "desc"
        @products = @products.order(price: :desc)
      else
      @products = @products.order(:price)
      end
    else
      @products = @products.order(:id)
    end

    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end

    render 'all_products.json.jbuilder'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create

    @product = Product.new(
    name: params["name"],
    price: params["price"],
    description: params["description"]
    
    )
   if @product.save
    render 'show.json.jbuilder'
    else 
      render json:{errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    
    @product.description = params["description"] || @product.description

    if @product.save
     render 'show.json.jbuilder'
     else 
       render json:{errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    render json: {message: "Your product has been destroyed."}
  
  end



  
end