class Api::ProductsController < ApplicationController

def all_products_method
  @products = Product.all
  render 'all_products.json.jbuilder'
end

def kenya_aa_method
  @kenya_aa = Product.find_by(id: 1)
  render 'kenya_aa_.json.jbuilder'
  
end

def costa_rica_tarrazu_method
  @costa_rica_tarrazu = Product.find_by(id: 2)
  render 'costa_rica_tarrazu.json.jbuilder'
end


def guatemala_method
  @guatemala = Product.find_by(id: 3)
  render 'guatemala.json.jbuilder'
end


def el_salvador_method
  @el_salvador = Product.find_by(id: 4)
  render 'el_salvador.json.jbuilder'
end
end
