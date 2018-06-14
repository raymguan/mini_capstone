class Api::ProductsController < ApplicationController

  def index
    @products = Product.all

    nam_search = params[:search]

    if params[:search]
      @products = Product.where("name LIKE ?", "%#{params[:search]}%")
    end

    if params[:price_sort]
      @products = products.order(price: :asc)
    else 
      @products = @products.order(id: :asc)
    end

    render "index.json.jbuilder"
  end

  def show
    products_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end

  def create
    @products = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
    )
    render "show.json.jbuilder"
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price 
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
  end

  def destroy
    proudct_id = params[:id]
    @products = Product.find_by(id: product_id)
    @proudcts = Product.destroy 
    render json: {message: "Product successfully destroyed"}
  end
end




























  # def product_action
  #   @product = Product.first #single hash
  #   render "product_view.json.jbuilder"
  # end

  # def products_action
  #   @products = Product.all #array
  #   render "products_view.json.jbuilder"
  # end

  # def first_product_action
  #   @product = Product.first
  #   render "first_product_view.json.jbuilder"
  # end
  



