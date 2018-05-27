class Api::ProductsController < ApplicationController

  def product_action
    @product = Product.first #single hash
    render "product_view.json.jbuilder"
  end

  def products_action
    @products = Product.all #array
    render "products_view.json.jbuilder"
  end


end
