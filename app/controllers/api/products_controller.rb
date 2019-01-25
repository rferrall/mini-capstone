class Api::ProductsController < ApplicationController

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
    description: params["description"],
    image_url: params["image_url"]
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
    @product.image_url = params["image_url"] || @product.image_url
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

#   def kenya_aa_method
#     @kenya_aa = Product.find_by(id: 1)
#     render 'kenya_aa_.json.jbuilder'
  
#   end

#   def costa_rica_tarrazu_method
#     @costa_rica_tarrazu = Product.find_by(id: 2)
#     render 'costa_rica_tarrazu.json.jbuilder'
#   end


# def guatemala_method
#   @guatemala = Product.find_by(id: 3)
#   render 'guatemala.json.jbuilder'
# end


# def el_salvador_method
#   @el_salvador = Product.find_by(id: 4)
#   render 'el_salvador.json.jbuilder'
# end

# def one_product
#   product_id = params[:id]
#   @product = Product.find_by(id: product_id)
#   render 'first_product.json.jbuilder'
# end

# def first_product_method
#   @product = Product.first_product
#   render 'first_product.json.jbuilder'
# end

  
end