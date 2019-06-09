class ProductsController < ApplicationController
  def new
  	@product = Product.new

  end

  def index
  	@products = Product.all
  end

  def create
  	@product = Product.new(product_params)
    @product.save
    redirect_to products_path
  end

  def destroy
  end


  private


  def product_params
  	params.require(:product).permit(:album, labels_attributes: [:id, :label, :_destroy,
                                            genres_attributes: [:id, :genre, :_destroy,
                                            artists_attributes: [:id, :artist, :_destroy
    ]]])
  end

  def correct_user
    @user = Product.find(params[:id]).user
    redirect_to(product_path) unless @user = current_user
  end

end
